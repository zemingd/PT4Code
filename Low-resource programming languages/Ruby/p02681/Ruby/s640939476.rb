a = gets.chomp
b = gets.chomp

if /^#{a}[a-z]{1}/ === b then
  p 'Yes'
else
  p 'No'
end
