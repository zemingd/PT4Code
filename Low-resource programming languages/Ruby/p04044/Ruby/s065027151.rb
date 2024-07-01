# s1 = "axx"
# s2 = "dxx"
# s3 = "axxx"
# puts s1 <= s2
# puts s1 <= s3
# puts s1 >= s3

N, L = gets.split.map(&:to_i)
S = Array.new(N)
N.times do |i|
  S[i] = gets
end
(S.map(&:chomp).sort {|a,b| a <=> b}).map {|s| print s}
puts
  
