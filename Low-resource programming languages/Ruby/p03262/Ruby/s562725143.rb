def ascan; gets.split.map(&:to_i); end

N,X = ascan
p ascan.map{|e| e-X}.reduce(:gcd)