n = gets.to_i
p = gets.strip.split.map(&:to_i)
c = 0

if p == p.sort
  puts "YES"
  exit
end

(0..n-1).each do |i|
  if p[i] >= i + 1  
    c = c + i
    if c > 2
      puts "NO"
      exit
    end
  end
end
puts "YES"