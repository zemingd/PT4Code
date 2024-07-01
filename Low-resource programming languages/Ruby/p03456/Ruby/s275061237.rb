ab = gets.chomp.gsub(' ', '').to_i

isSqr = false
(1..1000).each do |n|
  if n * n == ab
    isSqr = true
    break
  end
end

if isSqr
  puts 'Yes'
else
  puts 'No'
end