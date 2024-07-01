input = gets
array = input.split('').map! {|char| char.to_i}

if array[0] != array[1] && array[1] != array[2] && array[2] != array[3]
  puts 'Good'
else
  puts 'Bad'
end