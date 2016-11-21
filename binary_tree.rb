class Node
  include Enumerable

  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end

  def each(&block)
    left.each(&block) if left
    block.call(self)
    right.each(&block) if right
  end

  def <=>(other_node)
    data <=> other_node.data
  end

  def insert(data,root)
      if data<root.data
          if root.left
            insert(data, root.left)
          else
            root.left=Node.new(data)
          end
      else
          if root.right
            insert(data, root.right)
          else
            root.right=Node.new(data)
          end
      end
  end
end

root = Node.new(13)
size=20
array=(1..100).to_a.sample(size)
p array
array.each {|value| root.insert(value,root)}

root.each {|x| puts x.data }

# just a few of the various operations Enumerable provides
puts "SUM"
puts root.inject(0) { |memo, val| memo += val.data }
puts "MAX"
puts root.max.data
puts "SORT"
 root.sort.map do |node|
  puts node.data
end

