S = STDIN.gets.chomp
r = Regexp.compile(/((dream)|(dreamer)|(erase)|(eraser))$/)

while true
  if S.slice!(r) == nil
    puts "NO"
    break
  end

  if S == ""
    puts "YES"
    break
  end
end
