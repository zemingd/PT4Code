s = gets.chomp
t = s.gsub(/dreamer|eraser/, "dreamer" => "", "eraser" => "").
      gsub(/dream|erase/, "dream" => "", "erase" => "")
t == "" ? print("YES") : print("NO")