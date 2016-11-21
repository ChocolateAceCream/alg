# Proc is bound to a variable, whereas a block is just a one off chunk of code that is passed to a method.
def do_something
  puts "before block"
  a=1
  yield a
  puts "after block"
  p a
end

do_something do |value|
  puts "inside the block a is #{value}"
  value+=1
end


#how yield wroks
array=%w{hello, worlds, programmer}
p array
def print_list(array,first=1)
  counter=first
  array.each do |value|
    puts "#{yield counter}. #{value}"
    counter=counter.next
  end
end

print_list(array,5) {|n| "[#{200*n}]"}
