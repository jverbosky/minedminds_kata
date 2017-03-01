# Test for raffle_ticket_class.rb
# Josh

require "minitest/autorun"
require_relative "raffle_ticket_class.rb"

class TestRaffleTicket < Minitest::Test

	# Don't change your tests to fit your code!!!
	# Change your code to fit your tests!!!
	# Otherwise it's not test driven - it's code driven.
	def test_ticket_5423_returns_true
		my_ticket = "5423"
		winning_tickets = ["5423"]
		# Commonly use ? as an indication that the result will be true/false
		results = winning_number_include?(my_ticket, winning_tickets)
		assert_equal(true, results)
	end

	def test_ticket_4555_returns_true
		my_ticket = "4555"
		winning_tickets = ["5423", "4555", "9876", "5432"]
		results = winning_number_include?(my_ticket, winning_tickets)
		assert_equal(true, results)
	end

	def test_ticket_4555_returns_false
		my_ticket = "4555"
		winning_tickets = ["5231", "3836", "9876", "5432"]
		results = winning_number_include?(my_ticket, winning_tickets)
		assert_equal(false, results)
	end

	def test_ticket_1393_returns_true
		my_ticket = "1393"
		winning_tickets = ["5231", "3836", "1393"]
		results = winning_number_each?(my_ticket, winning_tickets)
		assert_equal(true, results)
	end

	def test_ticket_5142_returns_false
		my_ticket = "5142"
		winning_tickets = ["5231", "3836", "1393", "7263", "5143", "7153"]
		results = winning_number_each?(my_ticket, winning_tickets)
		assert_equal(false, results)
	end
end