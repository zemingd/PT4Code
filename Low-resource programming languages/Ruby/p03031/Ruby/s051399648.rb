N, M = gets.split.map(&:to_i)
SWITCH = M.times.map { gets.split.map(&:to_i) }
P = gets.split.map(&:to_i)

def all_on?(rump)
  i = -1

  SWITCH.all? do |_, *s|
    cnt = 0

    s.each do |idx|
      cnt += 1 if rump[idx - 1]
    end

    i += 1
    cnt % 2 == P[i]
  end
end

ans = 0

[false, true].repeated_permutation(N).each do |list|
  ans += 1 if all_on?(list)
end

puts ans
