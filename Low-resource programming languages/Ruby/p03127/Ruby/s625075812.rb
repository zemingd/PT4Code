n=gets.to_i
a=gets.split.map(&:to_i).sort
while true
  min=a[0]
  a=a.map{|m| m%min}
  if a[1..-1].all?{|v| v==0}
    break
  end
  a=a.select{|v| v>0}
  a << min
  a.sort!
end
puts min
