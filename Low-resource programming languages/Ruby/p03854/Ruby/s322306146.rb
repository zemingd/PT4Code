s=gets.chomp.to_s.reverse!
d=["dream", "dreamer", "erase", "eraser"].map(&:reverse!)
k=0
s.size.times do |i|
  k+=1
  d.size.times do |j|
    if s[0,k]==d[j] then
      s.slice!(0,k)
      k=0
    elsif k>7
      puts 'NO'
      exit
    end
  end
end
puts 'YES'