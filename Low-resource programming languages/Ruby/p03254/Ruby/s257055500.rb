ans=r=0

n,x=gets.split.map(&:to_i)
gets.split.map(&:to_i).sort.map{|a|
  r += a
  if x - a > 0
    ans += 1
    x -= a
  elsif x == a
    puts ans += 1
    exit
  else
    puts ans
    exit
  end
}

puts ans-1