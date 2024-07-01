gets
x=gets.split.map(&:to_i)
y=x.sort
ymi=y.size/2
ym=y[ymi]
x.each{ |i|
  puts i<ym ? y[ymi]:y[ymi-1]
}
