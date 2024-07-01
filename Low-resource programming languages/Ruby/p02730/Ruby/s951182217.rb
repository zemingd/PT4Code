def parind?(str)
  return true if str.length < 2
  l = str.length/2
  #pp [str, str[0,l], str[str.length-l, l].reverse]
  str[0,l] == str[str.length-l, l].reverse
end

S = gets.chomp
SR = S.reverse
N = S.length
N2 = (N-1)/2
N3 = (N+3)/2

#pp S, SR, N, N2, N3
s1 = S[0,N2]
st = (N+3)/2
s2 = S[st-1, N-st+1]

#pp S, s1, s2

#pp s1, s2

unless parind?(S)
  return puts 'No'
end

unless parind?(s1)
  return puts 'No'
end

unless parind?(s2)
  return puts 'No'
end
puts 'Yes'
