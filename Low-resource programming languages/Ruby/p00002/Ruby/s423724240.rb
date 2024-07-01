# -*- coding: utf-8 -*-
while true
	tmp = gets

  break if tmp  == nil#break unless num1でもよい

	num1, num2 = tmp.split


  num3 = num1.to_i + num2.to_i
  num3 = num3.to_s

  puts num3.length
end