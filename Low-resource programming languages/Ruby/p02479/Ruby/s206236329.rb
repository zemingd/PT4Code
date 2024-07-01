require 'scanf'
sc = scanf("%d")
r = sc[0]
puts sprintf("%f %f", Math::PI*r*r, Math::PI*r*2)