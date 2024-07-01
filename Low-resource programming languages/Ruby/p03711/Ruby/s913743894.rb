def f(x)
  case  x
  when 4,6,9,11
    1
when 2
    2
  else
    3
  end
end

x, y = gets.split.map(&:to_i)
puts f(x) == f(y) ? "Yes": "No"