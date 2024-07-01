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

if s[0] == "1" && k > squeezed_s[0][1]
  puts s[1]
else
  puts s[0]
end