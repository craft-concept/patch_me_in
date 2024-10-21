require "test_helper"
require "generators/patch/patch_generator"

module PatchMeIn
  class PatchGeneratorTest < Rails::Generators::TestCase
    tests PatchMeIn::Generator
    destination Rails.root.join("tmp/generators")
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
