class Main
  str = gets.split(" ").map(&:to_i)
  puts "#{str[0]/str[1]} #{str[0]%str[1]} #{format("%.5f", str[0]/str[1])}"
end
