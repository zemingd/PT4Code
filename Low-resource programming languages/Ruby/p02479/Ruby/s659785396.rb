# coding: utf-8

require 'scanf'
r = scanf("%d")
r[0].to_i
area = r[0] * r[0] * Math::PI
length = 2 * r[0] * Math::PI
#p area
#p length
printf("%.6f %.6f\n",area ,length)