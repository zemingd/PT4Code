# s = gets.chomp.split.map(&:to_i)
# t = gets.chomp.split.map(&:to_i)

s = gets.chomp
t = gets.chomp
i = 0

ary1 = ['s', 'c', 'r']

ary2 = ['s', 'c', 'r']

count = 0

while i < 3 do
  if ary1.find_index(s) == ary2.find_index(t)
    count += 1
  end
end
#if ary1.find_index(s) == ary2.find_index(t)
#  puts count += 1
#end

puts count