N = gets.to_i
S = gets.chomp.split('')

before = Hash.new(0)
after = Hash.new(0)
S.each {|c| after[c] += 1}

ans = 0
N.times do |i|
    before[S[i]] += 1
    after[S[i]] -= 1
    result = ('a'..'z').count{|c|before[c] > 0 && after[c] > 0}
    ans = result if ans < result
end
puts ans