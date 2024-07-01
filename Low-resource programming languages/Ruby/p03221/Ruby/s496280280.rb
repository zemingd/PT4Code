N,M = gets.chomp.split(" ").map(&:to_i)
data = []
M.times do 
    data << gets.chomp.split(" ").map(&:to_i)
end
number_data = {}
data.each_with_index do |num,i|
    # p num,i
    if number_data[num[0]]
        number_data[num[0]] = number_data[num[0]].push(num[1])
    else
        number_data[num[0]] = [num[1]]
    end
end

new_hash = {}
number_data.each do |key, value|
    new_hash[key] = value.sort
end
data.each do |num|
    a = num[0]
    b = new_hash[num[0]].index(num[1]) + 1
    puts ('%06d' % a)+('%06d' % b)
end