c="Christmas"
e=" Eve"
a=[ c, c + e, c + e + e, c + e + e + e ]
d = ( gets.to_i - 25 ).abs
puts a[ d ]