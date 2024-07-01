a, b = gets.split("\s").map(&:to_i)

r = if a >= 13
      b
    elsif a >= 6
      b / 2
    else
      0
    end
p r