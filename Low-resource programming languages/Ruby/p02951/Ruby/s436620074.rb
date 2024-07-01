 a, b, c = gets.chomp.split.map(&:to_i)
 ans = if b + c <= a
         0
       else
         (b + c) - a
       end
 puts ans