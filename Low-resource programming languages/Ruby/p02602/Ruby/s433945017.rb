N,K = gets.split.map &:to_i
a = gets.split.map &:to_i
result = []
a.each_cons(K) do |ai|
  result << ai.inject{|i,j| i * j}
end
result.each_cons(2) do |m,n|
  if m < n
    puts 'Yes'
  else
    puts 'No'
  end
end
