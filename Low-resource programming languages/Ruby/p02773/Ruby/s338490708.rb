N = gets.to_i
dict = {}

N.times do
  si = gets.chomp
  
  if dict.has_key?(si)
    dict[si] += 1
  else
    dict[si] = 0
  end
end

max_count = dict.values.max
puts dict.select { |k, v| v == max_count }.keys.sort