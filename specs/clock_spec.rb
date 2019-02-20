# clock_spec.rb

require "minitest/autorun"
require "minitest/reporters"

require_relative "../lib/clock"
Minitest::Reporters.use!
# block indicates that this contains a suite of tests
describe "clock" do #
  # test number 1
  it "will return a string" do
    # Arrange
    hours = 8
    minutes = 14
    seconds = 27
    # Action
    time = clock(hours, minutes, seconds)
    # Assert
    expect(time).must_be_instance_of String
  end
  # test number 2
  it "will return the properly formatted time" do
    # Arrange
    hours = 8
    minutes = 14
    seconds = 27
    # Action
    time = clock(hours, minutes, seconds)
    # Assert
    expect(time).must_equal "08:14:27"
  end
  it "will raise an error when given an invalid argument" do
    expect {
      clock(25, 14, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, 60, 8)
    }.must_raise ArgumentError

    expect {
      clock(11, 14, 60)
    }.must_raise ArgumentError
  end
end
