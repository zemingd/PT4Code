require 'matrix'
n,m,l=gets.split.map(&:to_i)
a=(0..n-1).map{|i| gets.split.map(&:to_i)}
b=(0..m-1).map{|i| gets.split.map(&:to_i)}
puts Matrix[*a]*Matrix[*b].to_a.map{|i| i*' '}*$/