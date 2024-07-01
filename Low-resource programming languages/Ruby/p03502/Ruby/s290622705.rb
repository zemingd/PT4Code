In = gets.chomp
N = In.to_i
S = In.split("").map(&:to_i).inject(0){|s,x|s+=x}
puts N%S == 0 ? "Yes" : "No"
