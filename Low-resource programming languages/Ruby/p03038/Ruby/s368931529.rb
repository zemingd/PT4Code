def lower_bound(array, value)
  array.bsearch_index do |x|
    x >= value
  end
end

def upper_bound(array, value)
  i = array.bsearch_index do |x|
    x >= value
  end
  if i.nil?
    array.empty? ? nil : array.size - 1
  elsif i >= 1
    i - 1
  else
    nil
  end
end

def former(array, value)
  array.bsearch do |x|
    x >= value
  end
end

def latter(array, value)
  i = array.bsearch_index do |x|
    x >= value
  end
  if i.nil?
    array.empty? ? nil : array[-1]
  elsif i >= 1
    array[i - 1]
  else
    nil
  end
end

N, M = gets.split.map(&:to_i)
a_list = gets.split.map(&:to_i).sort
bc_list = M.times.map { gets.split.map(&:to_i) }

bc_list.each do |(b, c)|
  ub = upper_bound(a_list, c)
  if ub
    i = 0
    while true
      break if i >= b || i > ub
      a_list[i] = c
      i = i + 1
    end
    a_list.sort!
  end
end
ans = a_list.reduce(&:+)
puts ans
