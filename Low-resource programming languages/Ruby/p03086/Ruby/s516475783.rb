actg = ['A','T','C','G']
ans = gets.chomp.chars.map{|c| actg.include?(c) ? '1' : '0' }.join.split('0').map{|it| it.length}.max
puts ans == nil ? 0 : ans