io = STDIN
n,a,b=io.gets.split.map(&:to_i)
if (b-a).even?
  puts (b-a)/2
else
  if n-b > a-1
    if (a-1)*2+1 == b-a
      puts (b-a)
    elsif (a-1)*2+1 > b-a
      puts [b-1,n-a].min
    else
      puts ((a-1)*2+1)+((b-a)-((a-1)*2+1))/2
    end
  else
    if (n-b)*2+1 == b-a
      puts (b-a)
    elsif (n-b)*2+1 > b-a
      puts [b-1,n-a].min
    else
      puts ((n-b)*2+1)+((b-a)-((n-b)*2+1))/2
    end
  end
end
