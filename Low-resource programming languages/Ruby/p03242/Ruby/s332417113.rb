h = {
  "1" => "9", 
  "9" => "1"
}

puts gets.chomp.split("").map{|x| h[x]}.join("")