gets
r = 1
max = 10**18
a = gets.split.map(&:to_i)

if a.include?(0)
  puts 0
  exit
end

a.each do |i|
  r *= i
  if r > max
    puts -1
    exit
  end
end

puts r