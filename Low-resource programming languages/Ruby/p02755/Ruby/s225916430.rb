a, b = gets.split.map(&:to_i)

"想定解"
MAX = 1300
0.upto MAX do |i|
  pa = (i*0.08).floor
  pb = (i*0.1).floor
  if pa==a and pb==b
    puts i
    exit
  end
end
puts -1