input = gets.split("\s").map(&:to_i)
x_min = 0
x_max = input[0]
y_min = 0
y_max = input[1]
n = input[2]

n.times do
  input = gets.split("\s").map(&:to_i)
  if input[-1] == 1
    x_min = input[0] if input[0] > x_min
  elsif input[-1] == 2
    x_max = input[0] if input[0] < x_max
  elsif input[-1] == 3
    y_min = input[1] if input[1] > y_min
  else
    y_max = input[1] if input[1] < y_max
  end
end

w = x_max - x_min
h = y_max - y_min
w = 0 if w < 0
h = 0 if h < 0
puts w * h