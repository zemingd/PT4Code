n,k,q = gets.split(' ').map(&:to_i)
ary = []
q.times { ary << gets.to_i }

ans = [0] * n
ary.each do |a|
  ans[a-1] += 1
end

ans.each do |a|
  if a > q - k 
    puts 'Yes'
  else
    puts 'No'
  end
end