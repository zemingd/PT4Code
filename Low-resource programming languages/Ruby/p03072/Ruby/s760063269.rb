n = gets.chomp.to_i
h = gets.chomp.split().map(&:to_i)

ans = 1
hmax = h.first
1.upto(n-1).each do |i|
  if hmax <= h[i]
    ans+=1
    hmax = h[i]
  end
end

puts ans
