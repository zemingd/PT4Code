while line=gets
(m,f,r)=line.split().map(&:to_i)
  break if m==-1&&f==-1&&r==-1
  if m==-1 || f==-1
    m=f=0
  else
    case m+f
    when 80..100
      puts "A"
    when 65...80
      puts "B"
    when 50...65
      puts "C"
    when 30...50
      puts r >= 50 ? "C" : "D"
    else
      puts "F"
    end
  end
end