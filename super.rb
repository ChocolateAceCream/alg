class A
	def a(big='a')
		p "in class A #{big}"
	
	end
end

class B < A
	def a(big='b')
		super
		p "in class B #{big}"
	end
end

b=B.new
b.a('c')

=begin
Usage of super

The way super handles arguments is as follows:

When you invoke super with no arguments Ruby sends a message to the parent of the current object, asking it to invoke a method of the same name as the method invoking super. It automatically forwards the arguments that were passed to the method from which it's called.
Called with an empty argument list - super()-it sends no arguments to the higher-up method, even if arguments were passed to the current method.
Called with specific arguments - super(a, b, c) - it sends exactly those arguments.	
=end

#e.g.

class Bike
	attr_reader :gears, :wheels, :seats
	def initialize(gears = 1)
		@wheels=2
		@seats=1
		@gears= gears
	end
end

class Car < Bike
	def initialize(gears = 20)
		@wheels =20
		super
		
		@seats = 10
		@gears = gears
	end
end

a=Car.new(49)
p a.wheels
p a.seats
p a.gears

b=Bike.new
p b.wheels
p b.seats
p b.gears