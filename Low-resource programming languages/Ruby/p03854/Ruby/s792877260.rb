def add_str(t="")
  if t == $s[0..(t.size - 1)] || t == ""
    if t.size == $s.size
      puts "YES"
      exit
    end
    add_str(t+"dream")
    add_str(t+"dreamer")
    add_str(t+"erase")
    add_str(t+"eraser")
  else
    
    return
  end
end
$s = gets.chomp
add_str
puts "NO"