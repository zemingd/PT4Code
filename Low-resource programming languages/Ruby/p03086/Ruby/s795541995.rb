s_arr = gets.chomp.to_s.split('')
arr = ['A', 'C', 'G', 'T']

results = []
counter, max = [0, 0]

s_arr.each do |value|
  if arr.include?(value)
    counter += 1
    max = counter if counter > max
  else
    counter = 0
  end
end

print max
