n = gets.to_i
hs1 = gets.split.map(&:to_i)
hs2 = hs1.dup

hs2.shift
hs1.pop

result = hs1
  .zip(hs2)
  .map{|h|
    if h[0] - h[1] >= 0
      "1"
    else
      "0"    
    end
  }.join("")
  .split("0")
  .map{|s| s.size}

if result.size == 0
  puts 0
else
  puts result.max
end
