io = STDIN
n,k=io.gets.split.map(&:to_i)
s=io.gets.chomp
if k==1
  puts "#{s[0].downcase}#{s[1..-1]}"
else
  puts "#{s[0..k-2]}#{s[k-1].downcase}#{s[k..-1]}"
end
