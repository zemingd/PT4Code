n, a, b = gets.strip.split.map(&:to_i)

res_train=n*a
res_taxi=b

if res_train<res_taxi
  puts res_train
else
  puts res_taxi
end
