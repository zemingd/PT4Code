h, w = gets.split.map(&:to_i)
(puts 1; exit(0)) if h==1 || w==1
hh, ww = h/2*2, w/2*2

r = hh*ww/2

r += (w+(w.odd? ? 1 : 0))/2 if h.odd?
r += (h+(h.odd? ? 1 : 0))/2 if w.odd?
r -= 1 if w.odd? && h.odd?

puts r
