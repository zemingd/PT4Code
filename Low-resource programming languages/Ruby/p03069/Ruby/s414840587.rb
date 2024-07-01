n = STDIN.gets.chomp.to_i
s = STDIN.gets.chomp.split("")

cnt = 0
s.each{|c| 
  if c == "."
    cnt += 1
  end
  }

puts [cnt, (n-cnt)].min