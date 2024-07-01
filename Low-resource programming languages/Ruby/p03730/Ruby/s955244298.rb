a,b,c = gets.split.map(&:to_i)
(1..100).each do |i|
  if (a*i) % b == c
    puts "YES"
    exit
  end
end

puts "NO"