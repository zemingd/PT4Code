#ABC165B_1%.rb
x = gets.to_i
depo = 100.0
y = 0
rishi = 0.0

while true
  if depo >= x
    puts y
    exit
  end

  rishi = (depo*0.01).floor
  depo += rishi
  y += 1
end
