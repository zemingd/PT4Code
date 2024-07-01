N, K = gets.split.map(&:to_i)
p N==1? K : K*((K-1)**(N-1))