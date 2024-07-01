src = gets.chomp
cnt = 0
$<.each {|l|
  break if l.chomp == "END_OF_TEXT"

  l.split.each{|w|
    cnt += 1 if w == src
  }
}

puts cnt