H, W = gets.split.map(&:to_i)
S = ['.' * (W + 2)] + readlines.map{|l| '.' + l.chomp + '.'} + ['.' * (W + 2)]

(1 .. H).each do |i|
  (1 .. W).each do |j|
    next if S[i][j] == '.'
    (puts 'No'; exit) if [S[i-1][j], S[i+1][j], S[i][j-1], S[i][j+1]].all?{|s| s == '.'}
  end
end
puts 'Yes'