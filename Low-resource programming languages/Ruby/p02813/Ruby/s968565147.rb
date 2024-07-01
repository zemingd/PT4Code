n = gets.chomp.to_i
s1 = gets.chomp.split(" ")
s2 = gets.chomp.split(" ")
s1 = s1.map!(&:to_i)
s2 = s2.map!(&:to_i)
data = []
all_data = []
for i in 0..(n-1)
    data[i] = i+1
end
all_data = data.permutation.to_a.sort
a = all_data.index(s1)+1
b = all_data.index(s2)+1
puts (a-b).abs