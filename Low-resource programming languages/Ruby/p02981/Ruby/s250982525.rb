n, a, b = gets().split.map(&:to_i)

train_price = a * n
taxy_price = b

p train_price > taxy_price ? taxy_price : train_price