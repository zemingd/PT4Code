require 'prime'
A,B=gets.split.map &:to_i
p Prime.each([A,B].max).to_a.select {|n|
  A % n == 0 and B % n == 0
}.size + 1
