n,a,b = gets.split.map(&:to_i)
puts (b-a)%2==0 ? (b-a)/2 : ([a, n-b+1].min+(b-a-1)/2)