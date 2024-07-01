n=gets.to_i
s=gets.chomp.split('')
ma=0
for i in 1..n-1
  x=s[0..i-1].uniq
  y=s[i..n-1].uniq
  c=0
  for x in x
    if y.index(x)
      c+=1
    end
  end
  ma=[ma,c].max
end
puts ma
  