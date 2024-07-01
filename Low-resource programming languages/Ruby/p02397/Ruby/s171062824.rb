class Main
  while(true)
    str = gets
    str = str.split(" ")
    str.map { |x| x.to_i }
    break if (str[0].to_i == 0 && str[1].to_i == 0)
    str.sort_by! { |n| n }
    puts "#{str[0]} #{str[1]}"
  end
end
