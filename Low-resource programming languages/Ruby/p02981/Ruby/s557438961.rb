input_line = gets.chomp.split(" ")
n = input_line[0].to_i
train_cost_1 = input_line[1].to_i
car_cost_all = input_line[2].to_i
train_cost_all = train_cost_1 * n
if train_cost_all > car_cost_all then
  puts car_cost_all
else
  puts train_cost_all
end

#puts n,a,b