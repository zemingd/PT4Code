a,b,c =gets.split.map(&:to_i)
b.times do |i|
  puts "YES" if a*i%b==c
  exit
end
puts "NO"