N = gets.to_i
# a = gets.chomp
a = gets.split.map(&:to_i)
Q = gets.to_i
b_c = []
Q.times do
  b_c << gets.split.map(&:to_i)
end

sum = a.sum

b_c.each do |i|
  count = a.select{|n| n == i[0]}.count
  sum += (count*i[1] - count*i[0])
  a.delete(i[0])
  count.times {a << i[1]}
  puts sum
end

# class String
#   def change(a, b)
#     new_array = self.gsub!(a,b)
#     new_array
#   end
# end
#
#
# b_c.each do |i|
#   a = a.change(i[0], i[1]) if a.match i[0]
#   puts a.split.map(&:to_i).sum
# end
