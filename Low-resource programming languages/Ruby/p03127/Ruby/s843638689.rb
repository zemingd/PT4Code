N = gets.to_i
a = gets.split.map(&:to_i)

a.sort!

while a.length > 1 do
  tmp = a.last % a.first
  a.pop

  a.unshift(tmp) if tmp !=0
end

puts a
