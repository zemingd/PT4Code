require 'scanf'
sc = scanf("%d")
x = sc[0]
puts sprintf("%.6f %.6f", x**2*Math::PI, x*2*Math::PI)