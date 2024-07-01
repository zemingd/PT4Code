n,y=gets.chomp.split(" ").map(&:to_i)
found = false
catch(:break_loop) do
  (0..n).each do|ichiman|
    total = ichiman * 10000
    if total == y
      puts "#{ichiman} 0 0"
      found = true
      break
    elsif total > y
      break
    end
    (0..n-ichiman).each do |gosen|
      total = ichiman * 10000 + gosen * 5000
      if total == y
        puts "#{ichiman} #{gosen} 0"
        found = true
        throw :break_loop
      elseif total > y
        break
      end
      sen = n - ichiman - gosen
      total = ichiman * 10000 + gosen * 5000 + sen * 1000
      if total == y
        puts "#{ichiman} #{gosen} #{sen}"
        found = true
        throw :break_loop
      end
    end
  end
end
puts '-1 -1 -1' unless found
