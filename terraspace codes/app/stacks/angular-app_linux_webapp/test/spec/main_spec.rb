describe "main" do
  before(:all) do
    stack_path = File.expand_path("../..", __dir__) # the source of the stack to test is 2 levels up
    ts_root = File.expand_path("../../..", stack_path) # original Terraspace.root
    # Build terraspace project to use as a test harness
    # Will be located at: /tmp/terraspace/test-harnesses/linux_webapp-harness
    terraspace.build_test_harness(
      name:    "linux_webapp-harness",
      modules: "#{ts_root}/app/modules", # include all modules in folder
      stacks:  {linux_webapp: stack_path},
      # override demo stack tfvars for testing
      config:  "#{stack_path}/test/spec/fixtures/config",
      tfvars:  {linux_webapp: "#{stack_path}/test/spec/fixtures/tfvars/test.tfvars"},
    )
    terraspace.up("linux_webapp")
  end
  after(:all) do
    terraspace.down("linux_webapp")
  end

  it "successful deploy" do
    # Replace with your own test
    expect(true).to be true
    # Example
    # pp terraspace.outputs
    output_value = terraspace.output("linux_webapp", "bucket_name")
    puts "output_value #{output_value}"
    # More useful helpers:
    # pp terraspace.state['resources']
    # pp terraspace.state_resource('random_pet.this')
    # pp terraspace.state_resource('module.bucket')
  end
end
