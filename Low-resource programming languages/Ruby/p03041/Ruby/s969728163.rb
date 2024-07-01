n, k = gets.rstrip.split(' ').map(&:to_i)
s = gets.rstrip

p "#{s.slice(0, k-1)}#{s[k-1].downcase}#{s.slice(k, n)}"