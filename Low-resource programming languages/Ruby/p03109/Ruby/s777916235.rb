date = gets
date.gsub!("\n", '')
y,m,d = date.split('/').map(&:to_i)

if y <= 2019
  if m <= 4
    if d <= 30
      puts 'Heisei'
    else
      puts 'TBD'
    end
  else
    puts 'TBD'
  end
else
  puts 'TBD'
  return
end
