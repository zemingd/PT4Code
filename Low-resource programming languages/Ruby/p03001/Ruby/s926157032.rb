require 'pp'
require 'set'

w, h, x, y = gets.chomp!.split(" ").map(&:to_i)

=begin
if w == h 
    xx = w.to_f / 2
    yy = h.to_f
    d = 1
elsif w < h
    xx = [w - x, x].min.to_f
    yy = h.to_f
    d = 0
else # h < w
    xx = w.to_f
    yy = [h - y, y].min.to_f
    d = 0
end
=end

d = (x * 2 == w && y * 2 == h) ? 1 : 0
puts "#{sprintf("%.10f", w * h / 2.0)} #{d}"
