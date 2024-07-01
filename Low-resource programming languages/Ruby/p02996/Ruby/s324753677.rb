N = gets.to_i
ab=[]
N.times do
  ab << gets.split.map(&:to_i)
end
ab.sort_by!{|(a,b)| b}
sum = 0
ans = true
ab.each do |(a,b)|
  sum += a
  if sum > b
    ans = false
  end
end
puts ans ? 'Yes' : 'No' 
