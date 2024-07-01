n, k =gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
i = k-1
t = s[i].downcase

if k == 1
  print("#{t}#{s[k..-1]}\n")
else
  print("#{s[0..i-1]}#{t}#{s[k..-1]}\n")
end
