n = gets.chomp.to_i
s = gets.chomp

def inc (c, i)
  n = c.ord 
  result = n + i
  result -= 26 if result > 90
  result.chr
end

s.each_char do |c|
  print inc(c, n)
end

puts ""