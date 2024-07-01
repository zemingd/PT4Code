puts (1..gets.to_i).map{gets.to_i}.group_by{|v| v}.values.select{|v|v.length%2==1}.length
