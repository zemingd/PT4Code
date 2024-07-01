a, b = gets.split.map(&:to_i)
cnt = 0

def palindromic_number?(num)
  str = num.to_s
  str[0] == str[4] && str[1] == str[3]
end

a.upto(b) do |i|
  cnt += 1 if palindromic_number?(i)
end

puts cnt
