s = gets.chomp.codepoints
k = gets.to_i
for i in 0..s.size-2
  if s[i]+k > 122 && s[i] != 97
    k -= 123-s[i]
    s[i] = 97
  end
end
s[-1] = 97+(s[-1]-97+k)%26
s.each{|c|print c.chr}