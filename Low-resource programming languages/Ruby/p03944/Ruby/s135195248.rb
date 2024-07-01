input = gets.split("\s").map(&:to_i)
w = input[0]
h = input[1]
n = input[2]
arr = []

n.times do |i|
  arr[i] = gets.split("\s").map(&:to_i)
end

a1 = arr.select {|item| item[-1] == 1}
a2 = arr.select {|item| item[-1] == 2}
a3 = arr.select {|item| item[-1] == 3}
a4 = arr.select {|item| item[-1] == 4}
a1.sort_by! {|item| item[0]}
a2.sort_by! {|item| item[1]}
a3.sort_by! {|item| item[2]}
a4.sort_by! {|item| item[3]}
a1 = [[0, 0, 0]] if a1.empty?
a2 = [[w, w, w]] if a2.empty?
a3 = [[0, 0, 0]] if a3.empty?
a4 = [[h, h, h]] if a4.empty?

result = (a2[-1][0] - a1[0][0]) * (a4[-1][1] - a3[-1][1])
puts result < 0 ? 0 : result