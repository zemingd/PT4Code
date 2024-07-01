io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//)

ans=n
n.times do |i|
  left=s[0...i].count("W")
  right=s[i..-1].count("E")
  ans=[ans,left+right].min
end
puts ans
