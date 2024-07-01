N, K = gets.split.map(&:to_i)
S = gets.chomp


result = ''
N.times do |i|
  if K == i + 1
    result += S[i].downcase
  else
    result += S[i]
  end
end

puts result