require 'prime' #素数のメソッド
N = gets.to_i
puts Prime.find {|p| p >= N}