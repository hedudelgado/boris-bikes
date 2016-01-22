require './lib/bike.rb'

class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	attr_reader :bike

	def release_bike
		fail "no bike available" if empty?
		@bikes.pop
	end

	def dock(bike)
		fail "warning " + DEFAULT_CAPACITY.to_s + " bikes already docked" if full?
		@bikes.push(bike)
	end

private

	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.count < 1
	end

end
