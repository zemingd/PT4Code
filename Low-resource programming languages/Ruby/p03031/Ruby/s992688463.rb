N, M = gets.split.map(&:to_i)
require 'set'
KS = M.times.map { Set.new(gets.split.drop(1).map(&:to_i)) }
P = gets.split.map(&:to_i)

ans = 0
(0...(1 << N)).each do |state|
  k = 0
  is_ok = KS.all? do |set|
    c = (1..N).count do |s|
      state[s - 1] == 1 && set.include?(s)
    end
    ret = c % 2 == P[k]
    k += 1
    ret
  end
  ans += 1 if is_ok
end
puts ans