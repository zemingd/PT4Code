n = gets.to_i
rates = Hash.new(0)
arr = gets.split.map(&:to_i)
arr.each do |ar|
  if ar < 400
    rates[:gray] += 1
  elsif ar < 800
    rates[:brown] += 1
  elsif ar < 1200
    rates[:green] += 1
  elsif ar < 1600
    rates[:skyblue] += 1
  elsif ar < 2000
    rates[:blue] += 1
  elsif ar < 2400
    rates[:yellow] += 1
  elsif ar < 2800
    rates[:orange] += 1
  elsif ar < 3200
    rates[:red] += 1
  else
    rates[:other] += 1
  end
end
if rates[:other] > 0
  max =  (rates.size - 1) + rates[:other]
  if max > 8
    max = 8
  end
  if (rates.size - 1) <= rates[:other]
    min = rates[:other]
  else
    min = rates.size - 1
  end
else
  max = min = rates.size
end

puts "#{min} #{max}"
