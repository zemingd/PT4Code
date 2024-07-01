A,B = gets.split.map(&:to_i)
S = gets.chomp
C = S.split('').map(&:to_i)
D = S.split('')
if (C.slice(0,A)).all?{|x| 0 <= x && x <= 9} && (C.slice(A+1,B)).all?{|x| 0 <= x && x <= 9} && D[A] == '-'
 puts 'Yes'
else 
    puts 'No'
end