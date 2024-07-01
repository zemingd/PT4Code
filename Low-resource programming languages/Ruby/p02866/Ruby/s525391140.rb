n=gets.to_i
d=gets.chomp.split(" ").map(&:to_i)
max=d.max
unless d[0].zero?
  puts 0
else
  ans=1
  for i in 2..max
    val=1
    for j in n-i..n-2
      val*= j
    end
    ans+=val
  end
  puts ans-max+1
end
