# Test for code
#
# Unit Test example
# Write code to test and make sure your code does what you say it does

# Include minitest gem
# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html
require "minitest/autorun"

# Link test file and production file together
require_relative "kata0118.rb"

# Class to create a new instance for test (?)
class TestMinedMindsKata < Minitest::Test
	# Note: method name has to begin with "test"
	def test_1_returns_1
		# Test to make sure setup is good
		# asset_equal(1,1)
		assert_equal(1,1)
	end
end

=begin
	
Console output:

Run options: --seed 22745

# Running:

.

Finished in 0.000840s, 1190.8519 runs/s, 1190.8519 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

	
end