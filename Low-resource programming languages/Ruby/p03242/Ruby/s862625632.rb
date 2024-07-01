arr = gets.split("").map{ |a|
  if a == "9"
      a = "1"
  elsif a == "1"
      a = "9"
  end
 }

puts arr.jon