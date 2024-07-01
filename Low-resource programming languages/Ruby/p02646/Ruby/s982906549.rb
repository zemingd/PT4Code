a,v = gets.chomp.split(' ').map(&:to_i)
b,w = gets.chomp.split(' ').map(&:to_i)
t = gets.chomp.to_i

kyorisa = (b-a).abs
hayasasa = (v-w)
puts (hayasasa * t) >= kyorisa ? 'YES' : 'NO'