n=gets.to_i
s=gets.chomp
a="ABC"
count=0
0.upto(s.length-a.length) do |i|
  if s[i,a.length]==a
    count+=1
  end
end
puts count
