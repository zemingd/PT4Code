a,b = gets.split.map(&:to_i)

1..3.each do |c|
	if (a*b*c)%2 == 0
      puts "No"
      break
    else
      puts "Yes"
      break
    end
end

