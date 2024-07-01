a = gets.split(' ')
b = gets.split(' ')

H = a[0].to_i
W = a[1].to_i
h = b[0].to_i
w = b[1].to_i

print H*W - (H*w + W*h - h*w)