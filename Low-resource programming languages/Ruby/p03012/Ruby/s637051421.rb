N = gets.chomp.to_i
A = gets.chomp.split().map(&:to_i)
s = []
right =  A.inject(:+)
left = 0
 
N.times do |n|
  right -= A[n]
  left += A[n]
  s.push( (right - left).abs )
end
puts s.min