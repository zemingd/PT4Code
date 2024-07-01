# coding: utf-8

require 'scanf'
input = scanf("%d %d")
a = input[0].to_i
b = input[1].to_i

ans1 = a / b
#p ans1
ans2 = a % b
#p ans2
ans3 = a.to_f / b
#p ans3
printf("%d %d %.5f\n",ans1,ans2,ans3)