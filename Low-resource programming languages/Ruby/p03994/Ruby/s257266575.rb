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

s[-1] = (((s[-1].ord + k - "a".ord) % 26) + "a".ord).chr

puts s
