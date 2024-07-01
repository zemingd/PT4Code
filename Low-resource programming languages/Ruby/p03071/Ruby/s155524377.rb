a,b=gets.split.map(&:to_i)
cnt=0
2.times do
  if a>=b
    cnt +=a
    a -=1
  else
    cnt +=b
    b -=1
  end
end
puts cnt