h_arr = []
w_arr = []
while true
  h, w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  h_arr.push(h)
  w_arr.push(w)
end
h_arr.zip(w_arr) do |h, w|
  h.times do
    w.times do
      print "#"
    end
    puts ""
  end
  puts ""
end

