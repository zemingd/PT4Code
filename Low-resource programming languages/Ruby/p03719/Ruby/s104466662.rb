A, B, C = gets.split.map(&:to_i)

if C >= A && C <= B
    puts 'Yes'
else
    puts 'No'
end