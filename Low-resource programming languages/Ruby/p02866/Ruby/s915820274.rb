n=gets.to_i
d=gets.chomp.split(" ").map(&:to_i)
flag=false
d.each_with_index do|c,i|
  flag=true if i!=0 and c.zero?
end
unless d[0].zero? and not flag
  puts 0
else 
  d.sort!.reverse!.uniq!
  ans=n-d[0]
  d.each_with_index do|c,i|
    next if i.zero?
    break if c==1
    ans=(n-c)*(1+ans)
  end
  puts ans-d[0]+2
end
