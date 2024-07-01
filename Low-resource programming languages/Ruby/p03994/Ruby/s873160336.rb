# 19:13
s = gets.to_s.chomp
k = gets.to_s.to_i

b = s.bytes
n = s.size

# p "az".bytes #=> [97, 122]
t = idx = nil
ans = 'a' * n
b.each_with_index do |c, i|
  
  if c == 97
    next
  else
    d = 123 - c
    if d <= k
      k -= d
    else
      ans[i] = s[i]
    end
  end
end

ans[-1] = (97 + (ans[-1].ord + k - 97) % 26).chr

puts ans