applepi= gets
t = applepi.split.map(&:to_i) # split 配列にする　# map(&:to_i) 数値型に指定する
# p t 

t1 = ((3 * t[0]) + t[1])/2

p t1
