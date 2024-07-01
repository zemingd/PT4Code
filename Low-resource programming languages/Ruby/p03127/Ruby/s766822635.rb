_=gets
puts gets.split.map(&:to_i).inject{|memo, n| memo.gcd(n)}