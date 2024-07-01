input = readlines()
n = input.shift.chomp.to_i
s = input.shift.chomp.to_s

dic = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

r = ''
s.split('').each do |c|
  i = dic.find_index(c)
  ni = i + n
  ni = ni % 26 if ni > 25
  r += dic[ni]
end

puts r