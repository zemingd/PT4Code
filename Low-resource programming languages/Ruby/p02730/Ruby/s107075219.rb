chars = gets.strip.to_s

n = chars.length
k1 = chars.slice((n-1)/2)

k2 = chars.slice((n+3)/2-1..n)
if chars == chars.reverse && k1 == k1.reverse && k2 == k2.reverse
  puts 'Yes'
else
  puts 'No'
end


