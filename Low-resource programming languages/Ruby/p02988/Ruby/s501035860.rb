n = gets.chomp!.to_i
pl = gets.split(" ").map(&:to_i)
d = Array.new
i = 1
while i <= n-2
  e = Array.new
  e = [pl[i-1].to_i, pl[i].to_i, pl[i+1].to_i]
  #p e
  ne = e.sort
=begin
  for m in 0..1
    if e[m].to_i > e[m+1].to_i
  #ne = e.sort
      ne[m] = e[m]
    else
      ne[m+1]= e[m]
    end
  end
=end
  #p ne
  d.push(ne[1])
  i+=1
end
p d.uniq!.length