def func
  _n = gets
  puts gets.split.map(&:to_i).reverse.join(" ")
end

func
