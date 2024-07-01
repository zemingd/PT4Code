# coding: utf-8

require 'scanf'
r = scanf("%d")
r[0].to_f
area = r[0] * r[0] * Math::PI
length = 2 * r[0] * Math::PI
#p area
#p length
printf("%f %f\n",area ,length)