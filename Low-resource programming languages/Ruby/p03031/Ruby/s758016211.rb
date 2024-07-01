N, M = gets.split(' ').map(&:to_i)

C = 2 ** N

k_arr = []
M.times do
  k_arr << gets.split(' ').map(&:to_i)
end
P = gets.split(' ').map(&:to_i)

ans = 0
0.upto(C-1) do |n|
  ok = true
  s = n.to_s(2).rjust(N, '0')
  k_arr.each_with_index do |e, i|
    sum = 0
    e[0].times do |j|
      sum += s[e[1 + j] - 1].to_i
    end
    if P[i] != sum % 2
      ok = false
      break
    end
  end
  ans += 1 if ok
end

p ans

