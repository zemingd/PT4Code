
SS = ARGF.gets.chomp
NN = SS.size

def ispalin(ss)
  st = 0
  ed = ss.size - 1

  while st < ed
    if ss[st] != ss[ed]
      return false
    end
    st += 1
    ed -= 1
  end
  return true
end

tf = ispalin(SS)
#p tf
tf = tf && ispalin(SS[0..((NN - 1) / 2 - 1)])
#p ispalin(SS[0..((NN - 1) / 2 - 1)])
tf = tf && ispalin(SS[((NN + 3) / 2 - 1)..(NN - 1)])
#p ispalin(SS[((NN + 3) / 2 - 1)..(NN - 1)])

puts tf ? "Yes" : "No"
