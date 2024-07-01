#!/usr/bin/env ruby

require 'matrix'

if __FILE__ == $0 then
	n, m, l = gets.split.map(&:to_i)

	matA = Matrix.rows((1..n).map { gets.split.map(&:to_i) })
	matB = Matrix.rows((1..m).map { gets.split.map(&:to_i) })

	for col in (matA*matB).to_a do
		puts col.join(' ')
	end
end

