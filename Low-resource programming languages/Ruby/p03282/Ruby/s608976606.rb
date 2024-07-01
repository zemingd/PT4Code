s = gets.chomp
k = gets.chomp.to_i

squeezed_s = [[s[0], 1]]
s[1..-1].chars.each do |s|
  if squeezed_s[-1][0] == s
    squeezed_s[-1][1] += 1
  else
    squeezed_s.push [s, 1]
  end
end

if s[0] == "1"
  ans = k <= squeezed_s[0][1] ? s[0] : s[1]
  puts ans
elsif squeezed_s.size == 1
  puts s[0]
else
  s[1]
end