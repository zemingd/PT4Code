def func h
  if h == 1
    return 1
  end
  return func((h/2).floor) * 2 + 1
end

H = gets.to_i
puts func H