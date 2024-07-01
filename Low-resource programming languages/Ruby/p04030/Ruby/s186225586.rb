s = gets.chomp
ans = []
s.each_char { |c|
  case c
  when '0'
    ans << 0
  when '1'
    ans << 1
  else
    ans.pop
  end
}
ans.each { |x| print x }
puts