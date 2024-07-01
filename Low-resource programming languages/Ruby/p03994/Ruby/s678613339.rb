s = gets.to_s.chomp
k = gets.to_s.to_i

a = s.chars 
b = s.bytes
# p "az".bytes #=> [97, 122]
ans = s.chars
b.each_with_index do |c, i|
  
  if c == 97
    next
  else
    d = 123 - c
    if d <= k
      k -= d
      ans[i] = 'a'
    end
  end
end

ans[-1] = (97 + (ans[-1].ord + k - 97) % 26).chr

puts ans.join