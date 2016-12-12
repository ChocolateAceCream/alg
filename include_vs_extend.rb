=begin
Include is for adding methods to an instance of a class  
Extend is for adding class methods. Let’s take a look at a small example.
=end

module Foo
	def foo
		"abcdefg"
	end
end

class A
	include Foo
end

class B
	extend Foo
end

p A.new.foo
# A.foo  will return in no method
# B.new.foo will return in no method
p B.foo