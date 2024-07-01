n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

result = 0
remain = 0
n.times do |index|
  current_a = a[index]
  current_b = b[index]

  assist = [remain, current_a].min
  result += assist

  current_a = current_a - assist

  if current_b > current_a
    result += current_a
    remain = current_b - current_a
  else
    result += current_b
    remain = 0
  end
end
last_assist = [remain, a.last].min
result += last_assist

p result

