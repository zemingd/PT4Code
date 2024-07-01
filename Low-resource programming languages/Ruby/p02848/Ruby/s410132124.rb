N = gets.to_i
S = gets.chomp.split("")
a = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

S.each_with_index do |s, i|
  S[i] = a[(N + a.index(s)) % 26]
end
puts S.join
