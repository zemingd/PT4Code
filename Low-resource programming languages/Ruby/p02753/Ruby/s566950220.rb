S = STDIN.gets.chomp

if S.split('').uniq.size == 1
  puts 'No'
else
  puts 'Yes'
end

