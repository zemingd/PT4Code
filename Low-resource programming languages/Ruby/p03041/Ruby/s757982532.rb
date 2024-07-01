n, k = gets.rstrip.split(' ').map(&:to_i)
s = gets.rstrip

puts "#{s.slice(0, k-1)}#{s[k-1].downcase}#{s.slice(k, n)}"