length = 17
max= 0
array = (1..120).to_a.sample(length)
p array
(0...length).each do |i|
    sum = array[i]
    (i+1...array.length).each do |j|
        if array[j] > array[i]
            break
        else
            sum+=array[j]
        end
    end
    max = sum if sum > max
end
p max
