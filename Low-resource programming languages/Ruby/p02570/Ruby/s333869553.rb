D, T, S = gets.split(' ').map(&:to_i)
 if S*T >= D
   puts 'Yes'
 else
   puts 'No'
 end