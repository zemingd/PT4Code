$n = gets.to_i

def rec(digits)
  if digits.to_i > $n
    return 0
  end

  combs = 0
  tokens = %w(7 5 3)
  combs += 1 if tokens.all? {|d| digits.count(d) > 0 }

  tokens.each do |d|
    combs += rec(digits + d)
  end

  return combs
end

p rec('')
