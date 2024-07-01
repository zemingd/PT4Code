a = 'FREE'
count = 0
('A'..'Z').each do |n|
    count += 1 if a.count(n) == 2
end

if count == 2
    puts 'Yes'
else
    puts 'NO'
end