N, K, Q = gets.chomp.split.map(&:to_i)
A = $<.read.split(?\n).map(&:to_i)

member = Array.new(N.next, 0)
A.each {|i| member[i] = member[i].next}

member[1..-1].each do |score|
  puts (K + score - Q).positive? ? 'Yes' : 'No'
end