x=gets.to_i
puts x%x.to_s.chars.map(&:to_i).inject(&:+)==0 ? 'Yes' : 'No'