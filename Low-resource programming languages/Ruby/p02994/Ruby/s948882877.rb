N,L=gets.split.map &:to_i
p L*(N-1)+(0...N).inject(:+)-(0...N).to_a.min{|l,r|(L+l).abs<=>(L+r).abs}