X = gets.to_i

(puts X; exit) if X < 3

X.upto(100003) do |i|
  (puts i; exit) if 2.upto(Math.sqrt(i).ceil).all? {|j| i % j != 0 }
end