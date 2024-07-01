INF = 10 ** 100
n = gets.to_i
x = gets.chomp

def popcount(num)
  num.to_s(2).count('1')
end

start_count = x.count('1')

plus = start_count + 1
plus_contribution = [1 % plus]
plus_last = plus_contribution.last
INF.times do |i|
  tmp = plus_contribution.first * 2 % plus
  # if tmp == plus_last
  #   break
  # else
    plus_contribution.unshift(tmp)
  # end
  break if i >= n - 2
end
plus_contribution_size = plus_contribution.size

minus = start_count - 1
minus_contribution = [1 % minus]
minus_last = minus_contribution.last
INF.times do |i|
  tmp = minus_contribution.first * 2 % minus
  # if tmp == minus_last
  #   break
  # else
    minus_contribution.unshift(tmp)
  # end
  break if i >= n - 2
end
minus_contribution_size = minus_contribution.size

plus_default = 0
minus_default = 0
x.each_char.with_index do |c, i|
  next if c == '0'
  plus_default += plus_contribution[i]
  minus_default += minus_contribution[i]
end
plus_default %= plus if plus != 0
minus_default %= minus if minus != 0
# plus_contribution.reverse!
# minus_contribution.reverse!
# p plus_contribution
# p minus_contribution
# puts plus_default
# puts minus_default

# puts plus_default
# p plus_contribution
# puts
ans = []
(n - 1).downto(0) do |i|
  if x[i] == '0'
    tmp_mod = plus_default
    # puts tmp_mod if i == n-1
    tmp_mod += plus_contribution[i]
    tmp_mod -= plus if tmp_mod >= plus
    # puts tmp_mod if i == n-1
    # puts
    tmp_mod %= plus
  else
    tmp_mod = minus_default
    tmp_mod -= minus_contribution[i]
    tmp_mod += minus if tmp_mod < 0
    tmp_mod %= minus
  end
  # puts tmp_mod if i == n-1
  count = 1
  # puts tmp_mod
  until tmp_mod == 0
    tmp_mod %= popcount(tmp_mod)
    count += 1
  end
  ans.unshift(count)
end
ans.each { |a| puts a }
