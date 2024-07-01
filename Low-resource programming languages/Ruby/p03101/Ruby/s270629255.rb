input_a = gets.split.map(&:to_i)
input_b = gets.split.map(&:to_i)

up_s = input_a[0] * input_a[1]
tai_w = (input_a[0] * input_b[1]) + (input_a[1] * input_b[0])
do_s = input_b[0] * input_b[1]
puts up_s - (tai_w - do_s)

