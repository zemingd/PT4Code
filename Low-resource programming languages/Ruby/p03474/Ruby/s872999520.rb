A,B = gets.chomp.split.map(&:to_i)
S = gets.chomp.split('-')
if S.length == 2
  if S[0].length == A && S[1].length == B
    print "Yes\n"
    exit
  end
end
print "No\n"