def range(a, b, c)
  if a < b
    if b < c
      puts "Yes"
    else
      puts "No"
    end
  else
    puts "No"
  end
end

a,b,c = gets.split(' ').map(&:to_i)
range(a,b,c)