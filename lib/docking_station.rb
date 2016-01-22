require './lib/bike.rb'

class DockingStation

	DEFAULT_CAPACITY = 20
	attr_reader :capacity
	def initialize (k = DEFAULT_CAPACITY)
		@capacity = k
		@bikes = []
	end

	attr_reader :bike

	def release_bike
		fail "no bike available" if empty?
		@bikes.pop
	end

	def dock(bike)
		fail "warning " + @capacity.to_s + " bikes already docked" if full?
		@bikes.push(bike)
	end

private

	def full?
		@bikes.count >= @capacity
	end

	def empty?
		@bikes.count < 1
	end

end
