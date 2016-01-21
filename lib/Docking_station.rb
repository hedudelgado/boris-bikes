require_relative 'Bike'

#estoy en chapter 18 sin empezar y hasta ahora todo funcionando

class DockingStation
   DEFAULT_CAPACITY = 20

   attr_reader :capacity
   

   def initialize(capacity=DEFAULT_CAPACITY)
   	@capacity = capacity
   	@bike = []
   end

   def release_bike 
   		if empty? then raise 'No bikes' else @bike.pop end
   		#if empty?
   		#	raise 'No bikes'
   		#else
   		#	@bike.pop
   		#end
   end

   def dock(bike)
   		if full? then raise 'Station Full' else @bike << bike end
   		#if full? 
   		#	raise 'Station Full'
   		#else
   		#	@bike << bike
   		#end
   end
   
   private

    attr_reader :bike

    
    def full?
   		return true if bike.size >= capacity
   		false
   	end
   	
   	def empty?
   		return true if bike.size == 0
   		false
   	end

end


