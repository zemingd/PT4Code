def p2(n)
  ret=0
  while n%2==0
    ret+=1
    n/=2
  end
  ret
end

n=gets.to_i
puts gets.split.map(&:to_i).map{|a|p2(a)}.inject(:+)