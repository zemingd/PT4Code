n = gets
ary = gets.split.map(&:to_i)
b = 1
if ary.count(0)
  puts 0
  exit
end
ary.each do |a|
  b *= a
  if b > 10**18
    puts -1
    exit
  end
end
puts b