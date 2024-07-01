class Main
  str = gets
  str = str.split(" ")
  str.map { |n| n.to_i }
  str.sort!
end
