s = gets.chomp
count = { "a" => 0, "b" => 0, "c" => 0 }
s.chars {|c| count[c] += 1 }
puts (count["a"] == count["b"] && count["b"] == count["c"]) ? "Yes" : "No"