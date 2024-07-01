N, Q = gets.chomp.split().map(&:to_i)
S = gets.chomp.split('')
AC_ind = []

(N-1).times do |i|
  if S[i] == 'A' && S[i+1] == 'C'
    AC_ind << i
  end
end

Q.times do
  s, f = gets.chomp.split().map(&:to_i)
  s -= 1
  f -= 2
  puts AC_ind.count { |i| s <= i && i <= f }
end
