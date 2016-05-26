require_relative 'Bike'

class DockingStation
	

	attr_reader :bike 

	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end 

	
	def release_bike
		fail "No bikes available" if empty?
		@bikes.pop
	end

	
	def dock(bike)
		fail "No more spaces for bikes" if full?
		@bikes << bike
	end

	private 

	def full?
		@bikes.count >= DEFAULT_CAPACITY ? true : false 
	end  

	
	def empty?
		@bikes.count <= 0 ? true : false
	end 



end