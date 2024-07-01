n,k=gets.split.map(&:to_i)
s=gets.to_s
puts s.gsub!("#{s[k-1]}", s[k-1].downcase)