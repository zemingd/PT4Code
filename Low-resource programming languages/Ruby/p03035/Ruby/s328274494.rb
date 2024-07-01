A, B = gets.split.map(&:to_i)

puts case A
     when 0...6
       0
     when 6...13
       B / 2
     else
       B
     end
