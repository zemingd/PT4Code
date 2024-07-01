x,y=gets.split.map!(&:to_i)
max=1000
for i in 1..1000
  if (i*0.08).to_i==x && (i*0.1).to_i==y
    if max>i
      max=i
    end
  end
end
if max==1000
  puts -1
else
  puts max
end
