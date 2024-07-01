def combi(n,k)
  sum = 1
  (n-k).times do|i|
    sum = sum*(i + k+1)
  end
  return sum
end


n = gets.chomp.to_i
s = []
n.times do
  s << gets.chomp
end

hash = {}

n.times do|i|
  str = s[i].chars.sort.join
  if( hash[str] == nil )
    hash[str] = 1
  else 
    hash[str] += 1
  end
end
#puts hash
sum = 0
hash.each {|name, count|
  if(count > 1) then
    sum += combi( count, 2)
  end
}
puts sum
