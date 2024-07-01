def process(n, m, x)
  return 0 if m == 1

  x = x.sort
  sum_distance = x[-1] - x[0]
  return sum_distance if n == 1

  distance = []
  move_counter = 0
  for i in 1..(m-1) do
    distance[i-1] = x[i] - x[i-1]
  end
  distance = distance.sort
  move_counter = sum_distance
  for i in 2..n do
    move_counter -= distance.last
    distance.pop
  end
  move_counter
end
def main()
  n, m = gets.chomp.strip.split(' ').map(&:to_i)
  inputX = gets.chomp.strip
  x = []
  for i in 0..(m-1) do
    x[i] = inputX.split(' ').map(&:to_i)[i]
  end
  move_counter = process(n, m, x)

  puts "#{move_counter}"
end
main