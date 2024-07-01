d=gets.chomp.to_i
str = case d
  when 25
    'Christmas'
  when 24
    'Christmas Eve'
  when 23
    'Christmas Eve Eve'
  when 22
    'Christmas Eve Eve Eve'
end
  print("#{str}\n")