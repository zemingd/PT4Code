puts Proc.new{ |e| e == 0 ? "Balanced" : e > 0 ? "Left" : "Right" }.(gets.split.map(&:to_i).zip([1,1,-1,-1]).map { |e| e.inject(:*) }.inject(:+))
