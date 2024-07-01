n = gets.to_i
h_arr = gets.split.map(&:to_i)

prev_h = 0
current_step = 0
max_step = 0
h_arr.each do |h|
  if prev_h >= h
    current_step += 1
  else
    max_step = current_step if max_step < current_step
    current_step = 0
  end
  prev_h = h
end
max_step = current_step if max_step < current_step
puts max_step