A, B = gets.split(' ').map(&:to_i)
puts case A
     when -> n { n <= 5 }
       0
     when -> n { n <= 12 }
       B/2
     else
       B
     end
  