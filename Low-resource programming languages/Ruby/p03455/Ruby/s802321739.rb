a,b=gets.split.map(&:to_i)
sum=a*b
if sum.odd?
  p 'Odd'
else
  p 'Even'
end