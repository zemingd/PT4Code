s = gets.chomp
k = gets.to_i

na = s.unpack("C*")

i = 0
na.each do |n|
  if (123-n) <= k
    s[i] = "a"
    k -= 123-n
  end
  i += 1
  break if k == 0
end

if k != 0
  n = s[-1].ord + k%26
  if n > 122
    n -= 26
  end
  s[-1] = n.chr
end

puts s
