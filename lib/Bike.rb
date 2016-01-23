class Bike

	@status = true

	def report_broken
		@status = false	
	end

  	def working?
  		@status
  	end

end

