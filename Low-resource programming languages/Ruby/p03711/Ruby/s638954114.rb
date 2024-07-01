x, y = gets.split.map(&:to_i)

def group(x)
  case x
  when 2
    1
  when 4, 6, 9, 11
    2
  else
    3
  end
end

puts group(x) == group(y) ? 'Yes' : 'No'