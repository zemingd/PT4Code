N, K = gets.split.map(&:to_i)
p N==1? K : K*((N-1)**(K-1))