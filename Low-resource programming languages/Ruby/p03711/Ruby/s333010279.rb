ary1 = [1, 3, 5, 7, 8, 10, 12]
ary2 = [4, 6, 9, 11]
ary3 = [2]
x = gets.chomp.split(" ").map(&:to_i)

a1 = 0
a2 = 0
a3 = 0
x.each do |v|
  a1 += 1 if ary1.include?(v)
  a2 += 1 if ary2.include?(v)
  a3 += 1 if ary3.include?(v)
end

puts a1 == 2 || a2 == 2 || a3 == 2 ? "Yes" : "No"