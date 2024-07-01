a = gets.chomp
b = gets.chomp

p a, b
if /^#{a}[a-z]{1}\n/ === b then
  p 'Yes'
else
  p 'No'
end