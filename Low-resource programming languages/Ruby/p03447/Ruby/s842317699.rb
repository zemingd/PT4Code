n=gets.chomp.to_i
fst=gets.chomp.split(" ").map{|str| str.to_i}
snd=gets.chomp.split(" ").map{|str| str.to_i}

max=0

n.times do |i|
  total=0
  (0..i).each do |j|
    total+=fst[j]
  end
  (i..n-1).each do |j|
    total+=snd[j]
  end

  if total>max then
    max=total
  end

end
p max