a,b=gets.split.map(&:to_i)
mx=[a,b].max
mn=[a,b].min
if mx-mn >= 2 then
  p mx + mx - 1
else
  p mx + mn
end
