S = gets.chomp
T = gets.chomp

# 対応表を作る
l = {}

can_match = true
S.length.times do |i|
  if l[S[i]]
    if l[S[i]] != T[i]
      can_match = false
      break
    end
  else
    l[S[i]] = T[i]
  end
  if l[T[i]]
    if l[T[i]] != S[i]
      can_match = false
      break
    end
  else
    l[T[i]] = S[i]
  end
end

if can_match
  puts 'Yes'
else
  puts 'No'
end