input = [[6,3],0,1,3,4,7,10]
initial = input[1]
length =  input[0][0]
final = input[length]
gap = input[0][1]
p gap
critical_path = []
(1..length-1).each do |i|
    if i == 1 || i == length-1
        critical_path << i
    elsif (input[i+1]-input[i]) == gap
        critical_path << i
        critical_path << i+1
    end
end

critical_path << length
critical_index = critical_path.uniq
p critical_index
# traversal between each critical index
path = 1
critial_index.each_with_index do |value,index|
    if index != length
        number_of_path = find_path(value,critical_index[index+1])
        path *= number_of_path
    end
end
p path
