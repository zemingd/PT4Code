_ = gets.split(' ')
ws = gets.split(' ')

ws = ws.map {|w| w.to_i}

min = 99999999
length = ws.length

(0..length - 2).each do |idx|
  arr1 = ws[0..idx]
  arr2 = ws[(idx + 1)..(length - 1)]
  min = (arr1.inject(:+) - arr2.inject(:+)).abs if min > (arr1.inject(:+) - arr2.inject(:+)).abs
end

p min