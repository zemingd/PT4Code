s = gets.chomp.chars.map(&:to_i)
n = s.length - 1

sum = 0
div = true
while div
  n.times do |i|
    if s[i] == nil || s[i+1] == nil
      div = false
      break
    elsif s[i] + s[i+1] == 1
      sum += 2
      s.delete_at(i)
      break
    end
  end
end

puts sum