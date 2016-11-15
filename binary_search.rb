=begin
Binary Search: Search a sorted array by repeatedly dividing the search interval in half. Begin with an interval covering the whole array. If the value of the search key is less than the item in the middle of the interval, narrow the interval to the lower half. Otherwise narrow it to the upper half. Repeatedly check until the value is found or the interval is empty.


Time Complexity:
The time complexity of Binary Search can be written as
T(n) = T(n/2) + c 
The above recurrence can be solved either using Recurrence T ree method or Master method. It falls in case II of Master Method and solution of the recurrence is \Theta(Logn).

=end


#generate a random sorted array with size 20
size=20
array = (1..100).to_a.sample(size).sort
element = array.sample
p array
p element
upper = size -1
lower = 0
answer=[]
def search(array, element, upper, lower, answer)
	unless array[(upper+lower)/2]==element
		if element > array[(upper+lower)/2]
			lower = (upper+lower)/2
		else
			upper = (upper+lower)/2
		end
		search(array, element, upper, lower,answer)
	else
		answer<<((upper+lower)/2+1)
	end
end
search(array, element, upper, lower,answer)
puts "element #{element} is the #{answer[0]} in the array"

################################################################################################
=begin
Search an element in a sorted and rotated array
=end

#rotate array randomly
array = array.rotate((1..size).to_a.sample)
#search for pivot index
def find_pivot(array, upper, lower)
	mid = (upper+lower)/2
	unless array[mid]>array[mid+1]
		if array[mid]>array[upper]
			find_pivot(array,upper,mid)
		else
			find_pivot(array,mid,lower)
		end
	else
		return mid+1
	end
end
p '############################'
p array
pivot=find_pivot(array,size-1,0)
puts "the staring index is #{pivot}"


#search fo the element

answer, upper,lower=[],pivot,0
search(array, element, upper, lower, answer)
if answer.empty?
	upper = size-1
	lower=pivot
	search(array, element, upper, lower, answer)
end
puts "element #{element} is the #{answer[0]} in the array"
