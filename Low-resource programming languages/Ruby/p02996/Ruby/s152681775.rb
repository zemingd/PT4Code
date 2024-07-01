n=gets.to_i
ary=[]
n.times do |i|
  ary<<gets.split.map(&:to_i)
end
ary.sort_by! {|x| x[1]}
result=0
ss=''
ary.each { |i,j|
  result +=i
  if result <=j
    next
  else
    ss = :No
  end
}
puts ss == :No ? ss : :Yes