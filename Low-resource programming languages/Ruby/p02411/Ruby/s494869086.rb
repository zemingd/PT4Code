while line=gets
(m,f,r)=line.split().map(&:to_i)
  break if m==-1&&f==-1&&r==-1
  if m==-1 || f==-1 || (m+f < 30)
    puts "F"
  elsif m+f >= 80
    puts "A"
  elsif m+f >= 65 && m+f < 80
    puts "B"
  elsif m+f >= 50 && m+f < 65
    puts "C"
  elsif m+f >= 30 && m+f < 50
    puts r >= 50 ? "C" : "D"
  else
    puts "ERROR"
  end
end