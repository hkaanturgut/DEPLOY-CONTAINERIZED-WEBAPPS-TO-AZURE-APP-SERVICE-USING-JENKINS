import app, { Component, on } from 'apprun';
import { articles, comments } from '../api';
import { IArticle } from '../models';
import Comments from './comment-list';
import ArticleMeta from './article-meta';
import Modal from './modal';
import { marked } from 'marked';

class ArticleComponent extends Component {
  state = {
    article: null,
    comments: []
  };

  view = (state) => {
    const article = state.article as IArticle;
    if (!article) {return;}
    return (
      <div class="article-page">
        {state.deleting && (
          <Modal
            title="Delete Article"
            body="Are you sure you want to delete this article?"
            ok="Delete"
            cancel="No"
            onOK='ok-delete-article'
            onCancel='cancel-delete-article'
          />
        )}

        <div class="banner">
          <div class="container">
            <h1>{article.title}</h1>
            <ArticleMeta article={article} component={this} />
          </div>
        </div>

        <div class="container page">
          <div class="row article-content">
            <div class="col-md-12">
              <p>{`_html:${marked(article.body)}`}</p>
              <div class="tag-list">
                <br />
                {article.tagList.map(tag => (
                  <li class="tag-default tag-pill tag-outline">
                    <a href={`#/tag/${tag}`}>{tag} </a>
                  </li>
                ))}
              </div>
            </div>
          </div>
          <hr />
          <div class="article-actions">
            <ArticleMeta article={article} component={this} />
          </div>
          <Comments comments={state.comments} />
        </div>
      </div>
    );
  };

  @on('#/article') root = async (state, slug) => {
    let article = state.article as IArticle;
    let _comments = state.comments;
    if (!article || article.slug !== slug) {
      const result = await articles.get(slug);
      article = result.article;
      const commentsResponse = await comments.forArticle(article.slug);
      _comments = commentsResponse.comments;
    }
    return { ...state, article, comments: _comments };
  };

  @on('/new-comment') newComment = async (state, e) => {
    try {
      e.preventDefault();
      const comment = e.target['comment'].value;
      if (!comment) {return;}
      await comments.create(state.article.slug, { body: comment });
      const commentsResponse = await comments.forArticle(state.article.slug);
      return { ...state, comments: commentsResponse.comments };
    } catch ({ errors }) {
      return { ...state, errors };
    }
  };

  @on('/delete-comment') deleteComment = async (state, comment) => {
    await comments.delete(this.state.article.slug, comment.id);
    const commentsResponse = await comments.forArticle(state.article.slug);
    return { ...state, comments: commentsResponse.comments };
  };

  @on('update-article') updateArticle = (state, article) => ({
    ...state,
    article
  });

  @on('update-follow') updateFollow = (state, author) => {
    state.article.author = author;
    return state;
  };

  @on('edit-article') editArticle = (state, article) => {
    document.location.hash = `#/editor/${article.slug}`;
  };

  @on('delete-article') deleteArticle = state => ({
    ...state,
    deleting: true
  });

  @on('ok-delete-article') okDelete = (state) => {
    articles.delete(state.article.slug);
    document.location.hash = '#/';
    return { ...state, deleting: false };
  };

  @on('cancel-delete-article') cancelDelete = state => ({
    ...state,
    deleting: false
  });
}

export default new ArticleComponent().mount('my-app');
