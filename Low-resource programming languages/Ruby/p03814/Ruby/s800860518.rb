str = gets.chomp.split("")
n = str.size
a = []
z = []
n.times do |i|
    a << i if str[i] == "A"
    z << i if str[i] == "Z"
end
puts z[-1] - a[0] + 1