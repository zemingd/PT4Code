N = gets.to_i
C = readlines.map(&:chomp)

ans = %w(AC WA TLE RE).zip([0,0,0,0]).to_h
C.each {|c| ans[c] += 1 }
ans.each {|k,v| puts "#{k} x #{v}" }