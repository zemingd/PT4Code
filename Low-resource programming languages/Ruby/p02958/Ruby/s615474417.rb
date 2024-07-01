n = gets.chomp.to_i
p = gets.chomp.gsub(" ", "")

answer = "YES"

(n - 1).times do |i|
  l = p[i].to_i
  r = p[i + 1].to_i

  if l > r
    answer = "NO"
    if p[l - 1].to_i == i + 1
      answer = "YES"
      break
    end
  end

  i = i + 1
end

puts answer
