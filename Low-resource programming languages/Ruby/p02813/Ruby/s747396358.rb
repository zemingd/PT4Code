line = readlines.map{ |s| s.chomp }
#line = ["3", "1 3 2", "3 1 2"]
n = line[0].to_i
#3
arr = (1..n).to_a
x = arr.permutation.collect{ |a| a.join(" ") }

# p x

p = line[1]
#"1 3 2"

q = line[2]
#"3 1 2"

#配列検索を行う
# ["1 2 3", "1 3 2", "2 1 3", "2 3 1", "3 1 2", "3 2 1"]
p1 = x.find_index { |n| n == p } + 1

q1 = x.find_index { |n| n == q } + 1

# puts p1 
# puts q1

result = p1 - q1

puts result.abs

