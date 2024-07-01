N, M = gets.map(&:to_i)
SWITCH = M.times.map { gets.split.map(&:to_i) }
P = gets.split.map(&:to_i)

def all_on?(list)
  i = 0
  SWITCH.all? do |k, *s|
    cnt = 0

    s.each do |idx|
      cnt += 1 if list[idx - 1]
    end
    
    cnt % 2 == P[i]
    i += 1
  end
end

ans = 0

[true, false].repeated_permutation(N).each do |list|
  ans += 1 if all_on?(list)
end

puts ans