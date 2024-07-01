N, Q = gets.chomp.split().map(&:to_i)
S = gets.chomp.split('')
AC_ind = Array.new(N+1, 0)

N.times do |i|
  if S[i] == 'A' && S[i+1] == 'C'
    AC_ind[i+1] = AC_ind[i] + 1
  else
    AC_ind[i+1] = AC_ind[i]
  end
end

Q.times do
  s, f = gets.chomp.split().map(&:to_i)
  puts AC_ind[f-1] - AC_ind[s-1]
end
