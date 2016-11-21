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
def search(array, element, upper, lower, answer, size)



		mid=(upper+lower)/2

	p mid
	sleep 1
	unless array[mid]==element
		if element > array[mid]
			lower = mid + 1
			  
		else
			upper = mid - 1
		end
		search(array, element, upper, lower,answer,size)
	else
		answer<<mid
	end
end
search(array, element, upper, lower,answer,size)
puts "element #{element} is the #{answer[0]+1} in the array"

################################################################################################
=begin
Search an element in a sorted and rotated array
=end

#rotate array randomly
array = array.rotate((1..size).to_a.sample)
p array
#search for pivot index
def find_pivot(array, upper, lower, pivot)
	mid = (upper+lower)/2
	unless array[mid]>array[mid+1]
		if array[mid]>array[upper]
			find_pivot(array,upper,mid+1,pivot)
		else
			find_pivot(array,mid-1,lower,pivot)
		end
	else
		pivot<<mid+1
	end
end
p '############################'
p array
pivot=[]
find_pivot(array,size-1,0,pivot)
puts "the staring index is #{pivot.first}"


#search for the element

def search2(array, element, upper, lower, answer, size)
		if upper<lower
			mid=(upper+lower+size)/2
		else
			mid = (upper+lower)/2
		end
	p mid
	p "asd#{array[mid]}"
	sleep 1
	unless array[mid]==element
		if element > array[mid]
			lower = mid + 1
			 if lower > (size-1)
			 	lower-=size
			 end
		else
			upper = mid - 1
			if upper < 0 
				upper+=size
			end
		end
		search2(array, element, upper, lower,answer,size)
	else
		answer<<mid
	end
end


answer, lower =[],pivot.first
if lower = size-1
	upper = 0
else
	upper = pivot.first-1
end


search2(array, element, upper, lower, answer,size)
puts "element #{element} is the #{answer[0]} in the array"
