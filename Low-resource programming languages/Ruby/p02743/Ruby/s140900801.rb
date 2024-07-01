A, B, C = gets.split.map(&:to_i)
RootA = A**(1/2.0).to_f
RootB = B**(1/2.0).to_f
RootC = C**(1/2.0).to_f

if RootA + RootB < RootC then
  puts "Yes"
else
  puts "No"
end
