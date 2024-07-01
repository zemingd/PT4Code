a, b, c = gets.chomp.split
def shiritori(str1, str2)
  str1[-1] == str2[0]
end
puts shiritori(a, b) && shiritori(b, c) ? 'YES' : 'NO'
