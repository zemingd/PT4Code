n = gets.to_i
sum = 0
takoyakis = gets.split(' ').map(&:to_i)
(0...n).each do |i|
  tako1 = takoyakis[i]
  (0...n).each do |j|
    next if i == j
    tako2 = takoyakis[j]
    sum += tako1 * tako2
  end
end
puts sum/2