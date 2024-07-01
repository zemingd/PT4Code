# coding: utf-8
S = gets.chomp!

def pal?(word)
  word = word.to_s
  size = word.length / 2
  return ( word[0..size] == word.reverse[0..size] )
end  

midp1 = ((S.size-1)/2)-1
midp2 = ((S.size+3)/2)-1

if pal?(S)
  if pal?(S[0..midp1]) and pal?(S[midp2..S.size-1])
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
