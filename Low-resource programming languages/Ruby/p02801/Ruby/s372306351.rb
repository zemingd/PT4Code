s = gets.chomp
flag = false
("a".."z").each do |c|
  if flag
    puts c
    break
  end
  if c == s
    flag = true
  end
end
