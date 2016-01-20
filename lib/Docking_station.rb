require_relative 'Bike'

class DockingStation
   
   attr_reader :bike

   def initialize
   	@bike = []
   end

   def release_bike
   		if @bike.size == 0
   			raise 'No bikes'
   		else
   			@bike.first
   		end
   end

   def dock(bike)
   		if @bike.size > 20
   			raise 'Station Full'
   		else
   			@bike << bike
   		end
   end


end


