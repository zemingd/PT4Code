gets.split.map(&:to_i).permutation(3).to_a.each{|_|if _[0]==_[1]+_[2];puts 'Yes';exit;end}
puts "No"