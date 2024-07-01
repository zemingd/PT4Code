s_arr = gets.chomp.to_s.split('')
arr = ['A', 'C', 'G', 'T']

results = []
counter = 0

s_arr.each do |c|
  if arr.include?(c)
    counter += 1
  else
    results.push(counter)
    counter = 0
  end
end

puts results.max
