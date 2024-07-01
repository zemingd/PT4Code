N = gets.to_i
def divisors(i)
  (1..i).select{|j| i % j == 0}
end
p (1..N).select(&:odd?).count{|i|
  divisors(i).length == 8
}