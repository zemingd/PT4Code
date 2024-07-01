ab = STDIN.readline.strip.gsub(' ', '').to_i

root = Math.sqrt(ab)
if root.floor == root
  puts 'Yes'
else
  puts 'No'
end