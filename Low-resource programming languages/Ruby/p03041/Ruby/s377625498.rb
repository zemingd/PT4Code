input = readlines

tmp = input[0].split(" ")
n = tmp[0].to_i
k = tmp[1].to_i

s = input[1]

s_tmp = s.split("");
s_tmp[k-1] = (s_tmp[k-1].ord + 32).chr

p s_tmp.join("")