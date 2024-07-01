# coding: utf-8
X = gets.to_i

require 'prime'

ptbl = []

Prime.each(10e5) do |e|
  ptbl.push e
end

i = ptbl.bsearch_index {|e| e > X}
puts ptbl[i]

