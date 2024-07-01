num = gets.chomp.to_i
arr = []

def already_calculated?(a,b,arr)
  return true if arr.include?([a,b]) || arr.include?([b,a])
  false
end

def check_digits(arr_item)
  arr_item.map(&:to_s).map(&:length).max
end

for n in 1..num do
  next if num % n != 0
  a, b = n, num / n
  arr << [a,b]  unless already_calculated?(a,b,arr)
end

digists = []

arr.each do |arr_item|
  digists << check_digits(arr_item)
end

print digists.min