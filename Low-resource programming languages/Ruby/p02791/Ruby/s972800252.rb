# input
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
ans = 1
nowmin = a[0]

# main
if n != 1 then
  (1..n).each do |i|
    if a[i] < nowmin then
      ans += 1
      nowmin = a[i]
    end
    if nowmin == 1
      break
    end    
  end
end

# output
puts ans
  