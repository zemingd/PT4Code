s=gets.chomp.to_s.reverse!
d=["dream", "dreamer", "erase", "eraser"].map(&:reverse!)
k=0
s.size.times do |i|
  k+=1
  d.size.times do |j|
    puts s[0,k]
    if s[0,k]==d[j] then
      s.slice!(0,k)
      k=0
    end
  end
end
puts s=='' ? 'YES' : 'NO'