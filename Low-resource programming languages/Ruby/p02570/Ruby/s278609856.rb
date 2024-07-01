D,T,S = gets.split.map(&:to_f)
if D/S <= T 
  p "Yes"
else
  p "No"
end