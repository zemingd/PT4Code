inputs = gets.split.map(&:to_i)
hp = gets.split.map(&:to_i)
hp.sort! {|x,y| y<=>x}
new_hp = hp.drop(inputs[1])
point = new_hp.inject(:+)
puts point.nil? ? 0 : point