N, Y = gets.split.map(&:to_i)

bills = [10000, 5000, 1000]

ans = '-1 -1 -1'
(N + 1).times do |i|
  (N - i + 1).times do |j|
    sum = bills[0] * i + bills[1] * j
    if Y - sum >= 0 && (Y - sum) % bills[2] == 0 then
      k = (Y - sum) / bills[2]
      if i + j + k <= N then
        ans = i.to_s + ' ' + j.to_s + ' ' + k.to_s
      end
    end
  end
end

puts ans
