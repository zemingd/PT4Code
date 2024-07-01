n = gets.strip.to_i
p = gets.strip.split.map(&:to_i)

sorted = p.sort

if sorted.zip(p).select {|s,p| s!=p}.count>2
  puts 'NO'
else
  puts 'YES'
end


