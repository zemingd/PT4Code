def lscan; gets.split.map(&:to_i); end

s,t = gets.chomp.split
a,b = lscan
u = gets.chomp

if s == u
  a -= 1
elsif t == u
  b -= 1
end

puts "#{a} #{b}"