N, M = gets.split.map(&:to_i)

K = []
S = []
M.times do
  k, *s = gets.split.map(&:to_i)
  K << k
  S << s
end
P = gets.split.map(&:to_i)

ans = 0
# [0, 1<<N)
for i in 0...(1<<N)
  all_swithces_are_on = true
  for j in 0...M
    number_of_switches = K[j]
    on_switches = 0
    for k in 0...number_of_switches
      if (i >> (S[j][k]-1) & 1) == 1
        on_switches += 1
      end
    end

    # puts "i: #{i} switch: #{j} count: #{on_switches} pj: #{P[j]} satisfied: #{on_switches % 2 == P[j]}"

    if on_switches % 2 != P[j]
      all_swithces_are_on = false
      break
    end
  end

  if all_swithces_are_on
    ans += 1
  end
end

puts ans
