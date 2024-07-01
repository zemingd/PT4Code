N, A, B = gets().split().map(&:to_i)
train_fare = N * A
if train_fare> B then
  puts B
else
  puts train_fare
end
