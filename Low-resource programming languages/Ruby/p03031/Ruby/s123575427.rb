N, M = gets.strip.split.map(&:to_i)

k = [0]
s = [0]

1.upto(M) do |i|
  tmp = gets.strip.split.map(&:to_i)
  k << tmp[0]
  s << tmp[1..-1]
end

p = [nil] + gets.strip.split.map(&:to_i)

ans = 0

[0,1].repeated_permutation(N) do |switches|
  switches.unshift nil
  ok = true
  1.upto(M) do |i|
    sum = 0
    1.upto(switches.size) do |j|
        sum += switches[j] if s[i].include?(j)
    end
    unless sum % 2 == p[i]
      break ok = false
    end
  end
  ans +=1 if ok == true
end

puts ans