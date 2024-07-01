S, T = readlines.map(&:chomp)

def fail
  puts 'No'
  exit
end

h1, h2 = {}, {}
S.chars.zip(T.chars).each do |s, t|
  fail if h1.key?(s) && h1[s] != t
  fail if h2.key?(t) && h2[t] != s
  h1[s] = t unless h1.key?(s)
  h2[t] = s unless h2.key?(t)
end
puts 'Yes'