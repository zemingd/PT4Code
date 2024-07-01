N = $stdin.gets.to_i
S = $stdin.gets.chomp.split("")

ans = ""
S.each do |s|
  ans += ((s.ord - 65 + N).modulo(26) + 65).chr
end
  
puts ans