x=gets.to_i
y=100
for i in 1..3760 do
  y=(y*1.01).to_i
  break if(y>=x)
end
puts i
