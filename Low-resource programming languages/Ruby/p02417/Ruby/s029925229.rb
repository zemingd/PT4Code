strs = gets.chomp.downcase.split("")
arr = Array.new(26){0}
strs.each{|s|
  i = s.ord - 97
  next if i < 0 || i > 25
  arr[i] += 1
}
("a".."z").each{|s|
  printf "%s : %d\n", s, arr[s.ord-97]
}