result=[]
while true
  m, f, r = gets.split.map(&:to_i)
  sum=m+f
  if m==-1 && f==-1 && r==-1
    break
  elsif m==-1 || f==-1
    result << "F"
  elsif sum>=80
    result << "A"
  elsif sum>=65 && sum<80
    result << "B"
  elsif sum>=50 && sum<65
    result << "C"
  elsif sum>=30 && sum<50
    if r>=50
      result << "C"
    else
      result << "E"
    end
  else 
    result << "F"
  end
end
puts result