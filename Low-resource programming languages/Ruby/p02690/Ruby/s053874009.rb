x=gets.to_i
l=[]
2000.times do |i|
  l << i**5
end
2000.times do |i|
  i.times do |j|
    if l[i]-l[j]==x
      puts i,j
      exit
    elsif l[i]+l[j]==x
      puts i,-j
      exit
    end
  end
end
