puts gets.to_i%$_.chars.map(&:to_i).reduce(:+)>0?"No":"Yes"