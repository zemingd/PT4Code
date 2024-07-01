n = gets.to_i
a = gets.split.map(&:to_i)

1.upto n do |i|
  puts a.count(i)
end