require 'pp'

S = readline.chomp
T = readline.chomp

map1 = {}
map2 = {}
S.each_char.with_index do |s,i|
  t = T[i]
  if map1.has_key?(s) or map2.has_key?(t)
    unless map1[s] == t and map2[t] == s
      puts 'No'
      exit
    end
  else
    map1[s] = t
    map2[t] = s
  end
end
puts 'Yes'

