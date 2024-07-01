N,K = gets.split.map(&:to_i)
puts gets.split.map(&:to_i).sort{|a,b|b<=>a}.take(K).inject(0){|memo,item| memo += item}