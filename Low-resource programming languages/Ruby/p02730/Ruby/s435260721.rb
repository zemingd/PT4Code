S = $stdin.read.strip
len = S.length / 2
if S[0, len] == S[-len, len]
  puts 'Yes'
else
  puts 'No'
end
