a,b = gets.split.map(&:to_i).sort

if a%2==b%2
  p (b-a)/2+a
else
  puts "IMPOSSIBLE"
end
