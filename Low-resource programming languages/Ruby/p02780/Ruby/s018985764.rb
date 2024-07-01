n, k = gets.split
array = gets.chomp.split.map(&:to_i)

max_combination = [0]
array.each_with_index do |e, i|
  if i == array.size - 2
    break
  end

  if array[i..(i+(k.to_i-1))].inject(&:+) > max_combination.inject(&:+)
    max_combination = array[i..(i+(k.to_i - 1))]
  end
end

ans = 0
max_combination.each do |el|
  ans += (1..el).to_a.inject(&:+).to_f / el.to_f
end

puts ans
