s = gets.chomp
loop {
  break if s.sub!(/dream$|dreamer$|erase$|eraser$/, '') == nil
}
puts s == "" ? "YES" : "NO"