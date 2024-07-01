while !((num = gets.split(//).map(&:to_i)).all?(&:zero?))
  puts num.sum
end
