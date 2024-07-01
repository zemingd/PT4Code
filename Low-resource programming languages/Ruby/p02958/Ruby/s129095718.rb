inv=(1..gets.to_i).to_a.zip(gets.split.map(&:to_i)).count{|a,b|a!=b}
puts inv.zero?||inv==2 ? :YES : :NO