class BinTruck

	def initialize(x, y, f)
		@x = x
		@y = y
		@f = f
	end

	def x
		@x
	end

	def y
		@y
	end

	def f
		@f
	end	

	def park(x, y, f)
		@x = x
		@y = y
		@f = f
		puts "PARK #{@x}, #{@y}, #{@f}"
	end

	def drive
		if (@f.eql? "NORTH")  && (@y < 7)
			@y = @y + 1
		elsif (@f.eql? "SOUTH") && (@y > 0)
		 	@y = @y - 1
		elsif (@f.eql? "EAST") && (@x < 7)
			@x = @x + 1
		elsif (@f.eql? "WEST") && (@x > 0)
			@x = @x - 1
		end
		puts "DRIVE"
	end

	def left
		if (@f.eql? "NORTH")
			(@f = "WEST") 
		elsif (@f == "WEST")
			(@f = "SOUTH")
		elsif (@f.eql? "SOUTH")
			(@f = "EAST")
		elsif (@f.eql? "EAST")
			(@f = "NORTH")
		end
		puts "LEFT"
	end

	def right
		if (@f.eql? "NORTH")
			@f = "EAST"
		elsif (@f.eql? "EAST")
			@f = "SOUTH"
		elsif (@f.eql? "SOUTH")
			@f = "WEST"
		elsif (@f.eql? "WEST")
			@f = "NORTH"
		end
		puts "RIGHT"
	end

	def pickup
		if (@f.eql? "NORTH") && (@x > 0) 
			puts "BIN PICKED AT #{@x - 1}, #{@y}"
		elsif (@f.eql? "EAST") && (@y < 7)
			puts "BIN PICKED AT #{@x}, #{@y + 1}"
		elsif (@f.eql? "SOUTH") && (@x < 7)
			puts "BIN PICKED AT #{@x + 1}, #{@y}"
		elsif (@f.eql? "WEST") && (@y > 0)
			puts "BIN PICKED AT #{@x}, #{@y - 1}"
		end
	end

	def call_central
		puts "CALLCENTRAL\n#{@x}, #{@y}, #{@f}"
	end

end

puts "Enter the Bin Truck PARK position"
puts "X position (0 to 7) = "
x = gets.chomp.to_i
puts "Y position (0 to 7) = "
y = gets.chomp.to_i
puts "Face direction (north, east, south or west) = "
f = gets.chomp.upcase
truck = BinTruck.new(x, y, f)
puts "PARK #{truck.x}, #{truck.y}, #{truck.f}"
puts "
	Enter 1 for PARK X,Y,F\n
	Enter 2 for DRIVE\n
	Enter 3 for LEFT\n
	Enter 4 for RIGHT\n
	Enter 5 for PICKUP\n
	Enter 6 for CALLCENTRAL\n
	Enter 7 for EXIT\n
"
i = gets.chomp.to_i	
loop do
	case i
	when 1
		puts "Enter the Bin Truck PARK position"
		puts "X position (0 to 7) = "
		x = gets.chomp.to_i
		puts "Y position (0 to 7) = "
		y = gets.chomp.to_i
		puts "Face direction = "
		f = gets.chomp.upcase 
		truck.park(x, y, f)
		puts "Enter choice (north, east, south or west) = "
		i = gets.chomp.to_i
	when 2
		truck.drive
		puts "Enter choice: "
		i = gets.chomp.to_i	
	when 3
		truck.left
		puts "Enter choice: "
		i = gets.chomp.to_i	
	when 4
		truck.right
		puts "Enter choice: "
		i = gets.chomp.to_i			
	when 5
		truck.pickup
		puts "Enter choice: "
		i = gets.chomp.to_i
	when 6
		truck.call_central
		puts "Enter choice: "
		i = gets.chomp.to_i
	when 7
		break
	else
		puts "only enter 1 - 7"
	end
	
end
