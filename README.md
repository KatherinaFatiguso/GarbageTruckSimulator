Katherina Fatiguso
2 August 2021

Ruby version 2.7
To run this Ruby bin_truck.rb on your laptop, save it in a folder and open that directory in your terminal.
Type in your terminal:

ruby bin_truck.rb

When the code is running on the terminal, the menu dialog will appear on the terminal where ruby code is running.
User will be asked for x position, y position and face direction of the bin truck.

///////////////////////////////////////////////
	Enter the values according to the instruction.
	Enter the Bin Truck PARK position
	X position (0 to 7) = ...
	Y position (0 to 7) = ...
	Face direction (north, east, south or west) = ...

	Enter 1 for PARK X,Y,F
	Enter 2 for DRIVE
	Enter 3 for LEFT
	Enter 4 for RIGHT
	Enter 5 for PICKUP
	Enter 6 for CALLCENTRAL
	Enter 7 for EXIT

///////////////////////////////////////////////


To run the menu dialog + the Unit Tests, in terminal, run:

ruby tc_bin_truck.rb

You will still see the same usual menu but after you enter 7 (which will EXIT the menu), then at the end you will see the unit test results.
