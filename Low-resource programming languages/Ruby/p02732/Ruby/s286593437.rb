n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
number_count = {}
ans = []
a.each do |i|
    if !number_count[i]
        number_count[i] = [1,0]
    else
        number_count[i][0] += 1
        number_count[i][1] = (number_count[i][0]*(number_count[i][0]-1)/2)
    end
end
sum = 0
number_count.keys.each do |key|
    sum += number_count[key][1]
end

ans = a.map do |i|
    sum - number_count[i][0]+1
end
puts ans