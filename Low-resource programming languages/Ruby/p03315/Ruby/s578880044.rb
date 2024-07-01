number = 0
gets.chomp.split("").map{|eat|
  val = 1
  val = -1 if eat == "-"
  number += val
}
puts number