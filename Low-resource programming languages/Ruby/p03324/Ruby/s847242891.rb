D, N = gets.chomp.split(" ").map(&:to_i)

c = N
c += 1 if N == 100

if D == 0 then
  print("#{c}\n")
else
  print("#{100 ** D * c}\n")
end
