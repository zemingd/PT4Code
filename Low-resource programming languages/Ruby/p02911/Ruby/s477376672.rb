N,K,Q = gets.split.map(&:to_i)
h = Hash.new(0)

Q.times do |i|
  a = gets.to_i
  h[a] += 1
end

N.times do |i|
  if Q-h[i+1] >= K
    puts 'No'
  else
    puts 'Yes'
  end
end