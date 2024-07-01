s = gets.chars
k = gets.to_i

if s.size == 1
  puts s[0]
else
  ans = 1

  k.times do |i|
    break if i > k

    if s[i].to_i != 1
      ans = s[i]
      break
    end
  end

  puts ans
end
