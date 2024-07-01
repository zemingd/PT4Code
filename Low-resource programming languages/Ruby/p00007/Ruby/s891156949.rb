
m=100

gets.to_i.times{m=(m*1.05).ceil}

puts m*1000



#浮動小数点数の切り捨てはfloorメソッドを用いる
#(例)1.4.floor→1  -1.4.floor→-2 (負数の場合は、絶対値が大きい方に丸められる)
#浮動小数点数の切り上げはceilメソッドを用いる
#(例)1.4.ceil→2 -1.4.ceil→-1 (負数の場合は、絶対値が小さい方に丸められる)

#小数点以下 N 桁の切り捨て・切り上げの場合は、BigDecimal を使用する
#require 'bigdecimal'
#BigDecimal(1.23456.to_s).floor(2).to_f # 1.24
#BigDecimal((1.23456).to_s).ceil(2).to_f # 1.24

#BigDecimal のオブジェクトを生成するときは、引数に String を指定しなければならないので、
#to_s で Float を String に変換しています。さらに最後に to_f で Float に戻しています。

#四捨五入には、 round メソッドを使用する。
#1.4.round→1　1.23456.round(2)→1.23  小数点以下N桁の四捨五入ではBigDecimalは不要


