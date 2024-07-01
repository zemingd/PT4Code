a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.chomp.to_i
i = false

t.times do |num|
  a += v
  b += w
  if a == b
    i = true
  end
end

if i == true
  puts "YES"
elsif i == false
  puts "NO"
end