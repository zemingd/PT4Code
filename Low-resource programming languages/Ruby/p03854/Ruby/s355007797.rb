def add_str(t="",wn=0,s=0)
  if t == $s[s..(s+wn-1)] || t == ""
    if s+wn == $s.size
      puts "YES"
      exit
    end
    add_str("dream", 5, s+wn)

    add_str("dreamer", 7, s+wn)

    add_str("erase", 5, s+wn)

    add_str("eraser", 6, s+wn)
  else
    return
  end
end
$s = gets.chomp
add_str
puts "NO"