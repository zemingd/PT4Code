n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
def digi(x)
  count = 0
  loop{
    if x%(2**(count+1))==0
      count+=1
    else
      break
    end
  }
  count
end

n.times{|i|
  ans += digi(a[i])
}

puts ans