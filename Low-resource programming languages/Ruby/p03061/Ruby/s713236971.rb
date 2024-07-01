N, A = gets.to_i, gets.split.map(&:to_i)
from, to = A.min, A.max
oks = []
(from..to).each {|i|
  oks << i if A.count {|a| a % i != 0 } <= 1
}
p oks.max