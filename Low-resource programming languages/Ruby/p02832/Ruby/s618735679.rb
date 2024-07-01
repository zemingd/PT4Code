n = gets.to_i
a = gets.split.map(&:to_i)
br = 0
counter = 1
n.times{|i|
  if a[i] == counter
    counter+=1
  else
    br+=1
  end
}
p (counter==1 ? -1 : br)
