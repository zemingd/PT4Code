puts gets.chomp.chars.map(&:to_i).map{|dig| 10-dig }.map(&:to_s).join
