arr = Array.new(26){0}
lines = readlines

lines.each{|line|
  strs = line.chomp.downcase.split("")
  strs.each{|s|
    i = s.ord - 97
    next if i < 0 || i > 25
    arr[i] += 1
  }
}
("a".."z").each{|s|
  printf "%s : %d\n", s, arr[s.ord-97]
}