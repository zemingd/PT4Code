n = gets.to_i
s = n.times.map{gets.chomp}

ans=0

(0..(n-1)/2).each do |i|
  (i+1..n-1).each do |j|
    ans +=1 if s[i].split('').sort == s[j].split('').sort
  end
end

puts ans
