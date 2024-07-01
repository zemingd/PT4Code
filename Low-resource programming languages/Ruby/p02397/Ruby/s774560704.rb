while a = gets.split(" ").map{|x| x.to_i}.sort!
  if a == [0, 0]
    break
  else
    puts "#{a[0]} #{a[1]}"
  end
end