#coding: UTF-8
if __FILE__ == $0
  while line = gets
    initial_debt = 100000
    weeks = line.split(" ")[0].to_i

    total_debt = initial_debt;
    weeks.times{|week|
      total_debt += total_debt * 0.05 
      #puts (total_debt / 1000).ceil * 1000
    }
    puts (total_debt / 1000).ceil * 1000

  end
end