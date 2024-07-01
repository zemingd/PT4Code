a, b = gets.split.map(&:to_i)
sq = "#{a}#{b}".to_i

flag = true

(1..sq/2).each do |i|
  if i**2 == sq
    puts 'Yes'
    flag = false
  end
end

if flag
  puts 'No'
end