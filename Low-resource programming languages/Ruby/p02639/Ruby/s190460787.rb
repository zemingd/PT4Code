x = []
x = gets.chomp.split(' ').map(&:to_i)

for i in 0...5 do
  if(x[i] == 0)
   puts i+1
  end
end
