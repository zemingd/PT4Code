class Main
  str = gets
  str = str.split(" ")
  str.map { |n| n.to_i }
  str.sort_by! { |x| x }
  puts "#{str[0]} #{str[1]} #{str[2]}"
end
