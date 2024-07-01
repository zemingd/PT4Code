require 'pp'
# 3 7 1099511627775
h = gets.to_i

def calc(x)
  return x if x == 1

  calc(x/2) * 2 + 1
end
p calc(h)


