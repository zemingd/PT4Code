_n, m = gets.split.map(&:to_i)
py = []
numbers = []
m.times do |i|
  py.push gets.split.map(&:to_i) + [i]
end
py_hash = py.group_by { |e| e.first }
py_hash.each do |pref, cities|
  sorted_cities = cities.sort_by { |c| c[1] }
  sorted_cities.each_index do |i|
    numbers[sorted_cities[i][2]] = format("%06d%06d", pref, i+1)
  end
end
numbers.each do |num|
  puts num
end
