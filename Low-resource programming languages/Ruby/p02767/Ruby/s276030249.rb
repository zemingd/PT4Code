a = gets.to_i
b_array = gets.split(" ")
c_array = []
d_array = []
for zahyo in 1..100 do
  c_array = []
  b_array.each do |banchi|
    banchi = banchi.to_i
    zahyo = zahyo.to_i
    x = 0
    x = (banchi - zahyo) ** 2
    c_array << x
  end
  sum = 0
  sum = c_array.inject(&:+)
  d_array << sum
end
puts d_array.min