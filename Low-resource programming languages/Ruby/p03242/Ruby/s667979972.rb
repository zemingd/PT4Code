n = gets.chomp.split("").map(&:to_i).map{|n| 
  if n == 1
    9
  elsif n == 9
    1
  else
    n
  end
  }
print("#{n.join()}")
