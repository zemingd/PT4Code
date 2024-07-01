s = gets.split("").map(&:to_i)

n = s.length

result = 0
(n-2).times do |i|
  if s[i] == s[i+1]
    result = result + 1

    if s[i+1].zero?
       s[i+1] = 1
    else
       s[i+1] = 0
    end
  end
end

puts result
