s = gets.split("").map(&:to_i)

cnt = 0

(s.size - 1).times do |i|
  if s[i]==s[i+1]
    puts 'Bad'
    cnt = -1
    break
  end
end

puts 'Good' if cnt == 0


