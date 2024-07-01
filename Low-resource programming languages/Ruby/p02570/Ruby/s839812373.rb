Ns = gets.split.map(&:to_f)
D = Ns[0]
T = Ns[1]
S = Ns[2]
if D/S <= T then
  p 'Yes'
else
  p 'No'
end