a, b, c = STDIN.gets.split.map(&:to_i)

puts(
  if a < b && b < c then
    'Yes'
  else
    'No'
  end
)