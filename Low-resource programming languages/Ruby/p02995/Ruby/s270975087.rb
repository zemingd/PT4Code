A, B, C, D = gets.split(' ').map(&:to_i)

divisible_by_C = B / C - (A - 1) / C
divisible_by_D = B / D - (A - 1) / D
lcm_CD = C.lcm(D)
divisible_by_CD = B / lcm_CD - (A - 1) / lcm_CD

print (B - A + 1) - divisible_by_C - divisible_by_D + divisible_by_CD
