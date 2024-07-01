n=gets
a=gets.chomp.split(" ").map(&:to_i)
ans=0
a.each{|i|
  ans+=i-1
}
puts(ans)
