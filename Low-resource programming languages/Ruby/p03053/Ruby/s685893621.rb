W=gets.split[1].to_i+1
b=$<.read.tr('.#
','10').to_i 2
(b&=b*2&b/2&b>>W&b<<W
$.+=1)while 0<b
p$.