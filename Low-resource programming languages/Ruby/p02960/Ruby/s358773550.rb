S = gets.chomp

MOD = 10**9 + 7

remainder = Array.new(13) {0}
remainder[0] = 1

ans = 0
S.chars.each_with_index do |s, i|
  digit = S.length - i - 1
  next_remainder = Array.new(13) {0}

  if s == '?'
    for i in 0..9
      d = 10**digit * i
      for j in 0..12
        next_remainder[(j + d % 13) % 13] += remainder[j]
        next_remainder[(j + d % 13) % 13] %= MOD
      end
    end
  else
    d = 10 ** digit * s.to_i
    for j in 0..12
      next_remainder[(j + d % 13) % 13] += remainder[j]
      next_remainder[(j + d % 13) % 13] %= MOD
    end
  end

  remainder = next_remainder
end

p remainder[5]
