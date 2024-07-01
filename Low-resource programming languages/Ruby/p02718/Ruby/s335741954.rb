n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_f)
num = a.inject(:+)
m = m.to_f
cnt = 0
n.times do |e|
  if (a[e]/num)>=1/(4*m)
    cnt = cnt+1
  else
  end
end
puts cnt>=m ? "Yes":"No"
