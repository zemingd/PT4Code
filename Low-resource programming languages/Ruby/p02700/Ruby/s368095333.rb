a, b, c, d = gets.split.map(&:to_i)


while (0 < a) && (0 < b) do  
  c = c - b
  a = a - d

  if (c <= 0) && (a <= 0)
    puts 'Yes'

  elsif (c <= 0) && (a > 0)
    puts 'Yes'

  elsif (a <= 0) && (c > 0)
    puts 'No'
  end
end