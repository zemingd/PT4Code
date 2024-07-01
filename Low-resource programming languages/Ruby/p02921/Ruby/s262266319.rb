S = gets.strip.split('')
T = gets.strip.split('')
cnt = 0

S.each_with_index do |item, i|
  if T[i] == item
    cnt += 1
  end
end
puts cnt