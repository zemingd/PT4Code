n=gets.to_i
as=gets.split.map(&:to_i)
m=1
check=true
n.times do |i|
  if m<=10**18
    m*=as[i]
  end
  if as[i]==0
    check=false
  end
end
if check
  puts m<=10**18 ? m:-1
else
  puts 0
end
