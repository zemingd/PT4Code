N = gets.to_i

puts (Math.sqrt(N).ceil .. N).find{|n| N % n == 0}.to_s.length