n = gets.chomp("").to_i
s = gets.chop

cnt = 1
(n-2).times do |i|
  if s[i] != s[i+1]
    cnt += 1
  else
    if (n-1) == (i+2)
      cnt += 1
    end
  end
end

puts cnt
