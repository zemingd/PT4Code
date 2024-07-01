io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
hash={}
hash.default=0
a.each do |aa|
  hash[aa]+=1
end
case n
when 1
  puts 1
when 2
  if (a[0]-a[1]).abs<=1
    puts 2
  else
    puts 1
  end
else
  ans=0
  keys= hash.keys.sort
  keys.each_cons(3) do |x,y,z|
    if y-x==1
      if z-y==1
        ans=[ans,hash[x]+hash[y]+hash[z]].max
      else
        ans=[ans,hash[x]+hash[y]].max
      end
    elsif  z-y==1
      ans=[ans,hash[y]+hash[z]].max
    end
  end
  puts ans
end
