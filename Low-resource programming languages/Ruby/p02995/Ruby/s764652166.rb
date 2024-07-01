A, B, C, D = gets.split(' ').map(&:to_i)
left = 0
right = 0
lcm = C.lcm(D)

# A < B
left  = (A - 1) - (((A - 1) / C) + ((A - 1) / D) - ((A - 1) / lcm))
right = B - ((B / C) + (B / D) - (B / lcm))

puts right - left