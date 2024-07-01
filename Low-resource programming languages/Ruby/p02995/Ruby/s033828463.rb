arr = gets.chomp.split(' ').map(&:to_i)
A = arr[0]
B = arr[1]
C = arr[2]
D = arr[3]

bac_div_count = (B - A + 1) / C
bad_div_count = (B - A) / D

print (B - A + 1) - bac_div_count - bad_div_count
