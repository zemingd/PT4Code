X, A, B = gets.split.map(&:to_i)

puts case
     when B - A > X; 'dangerous'
     when B > A; 'safe'
     else; 'delicious'
end