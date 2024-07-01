A,B,C,K = gets.split.map(&:to_i)
an = [A,K].min
bn = [B,K-an].min
cn = K-an-bn
puts an - cn 