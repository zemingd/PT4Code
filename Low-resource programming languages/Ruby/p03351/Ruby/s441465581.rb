A,B,C,D=gets.split.map(&:to_i)
a=[A, B, C].sort
if a[-1]-a[0]<=2*D
puts 'Yes'
else
puts 'No'
end