lambda1 = -> (name) { puts "Hello #{name}" }
proc = Proc.new {|name| puts "hello #{name}"}

lambda1.call("dd")
proc.call("this is dd")


def lambda_method
  -> () { return "I was called from inside the lambda"}.call
  return "I was called from after the lambda"
end

puts lambda_method

a='poli'

game=lambda{puts a}

game.call

a='boli'
game.call