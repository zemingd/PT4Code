n=gets.to_i
d=gets.chomp.split(" ").map(&:to_i)
max=d.max
flag=false
d.each_with_index do|c,i|
  flag=true if i!=0 and c.zero?
end
unless d[0].zero? and not flag
  puts 0
else 
  ans=n-max
  (max-1).downto(2) do|i|
    ans=(n-i)*(1+ans)
  end
  puts ans-max+2
end
