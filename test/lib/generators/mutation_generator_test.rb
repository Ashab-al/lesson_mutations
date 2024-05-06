require "test_helper"
require "generators/mutation/mutation_generator"

class MutationGeneratorTest < Rails::Generators::TestCase
  tests MutationGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
