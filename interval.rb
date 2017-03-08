:a=[]
a = IO.readlines("input.txt").collect{|x| x.strip || x }
p a
a = a.collect {|x| x.strip || x}
a = a.each.map { |s| s.split.map(&:to_i)}
p a

def find_max(array, interval)
    sum = array[0..interval-1].inject(:+)
    max = sum
    index=0
    (1..array.length-interval).each do |i|
        sum = sum - array[i-1] + array[i-1+interval]
        if sum > max
            max = sum
            index = i
        end
    end
    return max,index
end

result = find_max(a[2], a[3][0])
score = result[0]
(1..a[1][1]-1).each do |i|
    range = (result[1]..(result[1]+a[3][i-1]-1))
    result = find_max(a[2][range], a[3][i])
    if i % 2 == 1
        score -= result[0]
    else
        p "this is puls"
        score += result[0]
    end

end
p score
