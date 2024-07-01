n=gets.to_i
numbers=Hash.new(0)
n.times {
  a=gets.to_i
  numbers[a]+=1
}
puts numbers.select {|k, v| v.odd? }.length
