p gets.bytes.reduce([1]+[0]*12){|d,c|
(0..12).map{|k|(c<58?[4+c]:0..9).map{|i|d[(i-k)*9%13]}.reduce(:+).% 10**9+7}
}[12]