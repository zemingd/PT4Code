ans = []
num = gets.chomp.to_i
(1..num).each do |i|
  if i % 3 == 0
    ans << i
  elsif i % 10 == 3
    ans << i
  else
    j = i
    while j / 10 > 0
      j /= 10
      if j % 10 == 3
        ans << i
        break
      end
    end
  end
end

print "\s"
puts ans.join("\s")