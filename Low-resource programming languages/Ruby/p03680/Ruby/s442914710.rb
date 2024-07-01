N = gets.to_i
button = []
N.times do
  button.push(gets.to_i)
end

button2 = []
light = 1
cnt = 0
while true
  if button2.any?{|b| b == light}
    cnt = -1
    break
  end
  cnt += 1
  button2.push(light)
  light = button[light-1]
  break if light == 2
end

p cnt