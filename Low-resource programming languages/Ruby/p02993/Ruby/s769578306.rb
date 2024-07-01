a=gets.split ''
puts (0..2).all?{|i| a[i]!=a[i+1]} ? 'Good' : 'Bad'