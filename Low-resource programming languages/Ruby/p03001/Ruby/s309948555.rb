w, h, x, y = gets.split.map(&:to_f)

if w == x && h == y
    rectang, num = x*y, 0
elsif w == x
    h-y > y ? (rectang, num = x*y,0) : (rectang, num = x*(h-y), 0)
elsif h == y
    w-s > x ? (rectang, num = x*y,0) : (rectang, num = (w-x)*y, 0)
else
    x > (w-x) ? rectang1 = (w-x)*h : rectang1 = x*h unless w == x
    y > (h-y) ? rectang2 = w*(h-y) : rectang2 = w*y unless h == y


    rectang1 > rectang2 ? rectang = rectang1 : rectang = rectang2

    rectang1 == rectang2 ? num = 1 : num = 0
end
puts "#{rectang}  #{num}"
