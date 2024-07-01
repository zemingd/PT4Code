while num = gets.split.map(&:to_i)

  if num[0] == 0 && num[1] == 0
    exit
  else
    num.sort!
    puts "#{num[0]} #{num[1]}"
  end

end