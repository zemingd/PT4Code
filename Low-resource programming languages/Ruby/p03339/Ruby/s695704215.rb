N = gets.to_i
S = gets.chomp.split("")

min = N
N.times{ |leader|
 min = [min, (S[0, leader].count("W") + S[leader+1, N-1].count("E"))].min
}

p min