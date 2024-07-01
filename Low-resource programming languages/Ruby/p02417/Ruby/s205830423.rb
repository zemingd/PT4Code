al = Hash[*[[*'a'..'z'], Array.new(26, 0)].transpose.flatten]

while w = gets
  w.chomp.downcase.split('').each { |e| al[e] += 1 }
end

al.each { |a, n| puts "#{a} : #{n}" }