require_relative 'Bike'


class DockingStation
   DEFAULT_CAPACITY = 20

   attr_reader :capacity, :bike
   

   def initialize(capacity=DEFAULT_CAPACITY)
   	@capacity = capacity
   	@bike = []
   end

   def release_bike 
   		if empty? or @bike.last.working? == false then raise 'No bikes' else @bike.pop end
   		# if empty? or @bike.pop.broken? == true
   		# 	raise 'No bikes'
     #     else
   		#     @bike.pop
     #     end
     
   end

   def dock(bike)
   		if full? then raise 'Station Full' else @bike << bike end

   end
   
   private

    #attr_reader :bike

    
    def full?
   		return true if bike.size >= capacity
   		false
   	end
   	
   	def empty?
   		if bike.size == 0 then return true else false end

    end
   

end


