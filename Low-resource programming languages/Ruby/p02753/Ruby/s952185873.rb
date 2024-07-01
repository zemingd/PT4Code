S = STDIN.gets.chomp

if S.split.uniq == 1
  puts 'No'
else
  puts 'Yes'
end

