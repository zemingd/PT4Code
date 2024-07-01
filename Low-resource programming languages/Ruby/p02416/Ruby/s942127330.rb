x = gets.split('').map(&:to_i).inject(:+)
until x == 0 do
  puts x
  x = gets.split('').map(&:to_i).inject(:+)
end