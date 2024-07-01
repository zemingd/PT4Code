K = gets.chomp.to_i
A, B = gets.chomp.split.map(&:to_i)

flag = false

(A..B).each do |num|
  if (num % K).zero?
    flag = true
  end
end

if flag == true
  puts 'OK'
else
  puts 'NG'
end
