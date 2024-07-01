N = gets.to_i
S = gets.chomp
puts (N&1==0&&(0...N/2).all?{|i| S[i]==S[i+N/2] }) ? 'Yes' : 'No'
