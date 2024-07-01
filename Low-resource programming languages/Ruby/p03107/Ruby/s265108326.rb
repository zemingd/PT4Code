s = $stdin.read.chomp
result = 0
100.times do
  if s.size==0
    puts result
    exit
  end
  s.size.times do |i|
    if i==s.size-1
      puts result
      exit
    end
    if s[i] == s[i+1]
      s.slice!(i,2)
      result += 2
      break
    end
  end
end
