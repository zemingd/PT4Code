S = gets.chomp.split('')
T = gets.chomp.split('')

def isCorect(i)
  if T[0] == i
    T.shift
    return true
  end  
  T.shift
  return false
end

puts S.select { |e| isCorect(e) }.length
