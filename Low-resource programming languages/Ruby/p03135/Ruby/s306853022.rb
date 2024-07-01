n,m=gets.split.map(&:to_i)
xs=gets.split.map(&:to_i).sort
divs=[]
(m-1).times{|i|
  divs<<(xs[i+1].abs-xs[i].abs).abs
}
sum=0
divs.sort!
(m-n).times{|i|
  sum+=divs[i]
}
if m-n > 0
  puts sum
else
  puts 0
end