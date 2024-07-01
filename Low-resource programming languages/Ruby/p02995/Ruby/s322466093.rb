A,B,C,D=$<.read.split.map(&:to_i)

a = A-1
x = B - B/C - B/D + B/C.lcm(D)
y = a - a/C - a/D + A/C.lcm(D)

puts x-y
