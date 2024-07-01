N, K = gets.split.map(&:to_i)
S = gets.chomp

if S.match(/^0+$/) || S.match(/^1+$/)
  puts S.size
else
  f1 = S[0] == '1'

# for 1
  b1 = S.split(/0+/).delete_if(&:empty?).map(&:size)

# for 0
  b2 = S.split(/1+/).delete_if(&:empty?).map(&:size)

  b3sum = [0]

  b2.size.times do |i|
    if f1
      s = 0
      s += b3sum[i]
      s += b1[i]
      s += b2[i]
      s += b1[i+1] if i + 1 < b1.size
      b3sum << s
    else
      s = 0
      s += b3sum[i]
      s += b1[i - 1] if i > 0
      s += b2[i]
      s += b1[i] if i < b1.size
      b3sum << s
    end
  end

  max = 0
  max_i = 0

  sm = b3sum.size - K - 1
  sm = 0 if sm < 0

  0.upto(sm) do |i|
    r = i + K
    r = b3sum.size - 1 if b3sum.size <= r
    s = b3sum[r] - b3sum[i]

    if max < s
      max = s
      max_i = i
    end
  end

  result = 0

  sm = max_i + K - 1
  sm = b2.size - 1 if b2.size <= sm

  max_i.upto(sm) do |i|
    if f1
      result += b1[i] + b2[i]
      if i == sm
        result += b1[i + 1] if b1.size > i + 1
      end
    else
      result += b1[i - 1] if i > 0
      result += b2[i]
      if i == sm
        result += b1[i] if b1.size > i
      end
    end
  end

  puts result
end

