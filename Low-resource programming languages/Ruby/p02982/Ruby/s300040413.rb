base = gets.split(' ').map {|i| i.to_i}
n = base[0]
d = base[1]
coordinates = []
success = 0
n.times do
  coordinates <<  r = gets.split(' ').map {|i| i.to_i}
end

coordinates.combination(2) {|s, f|
  #puts "s: #{s}, f: #{f}"
  _dist = 0
  0.upto(d-1) do |i|
    _dist += (s[i] - f[i]) ** 2
  end
  dist = Math.sqrt(_dist)
  if dist % 1 == 0
    #puts "Integer #{dist}"
    success += 1
  else
    #puts "Float #{dist}"
  end
}

puts success
