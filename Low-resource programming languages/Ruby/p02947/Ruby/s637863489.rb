def r;gets.split.map &:to_i;end
def rr(n);n.times.map{gets.chomp.chars.sort.join};end
N = gets.to_i
S = rr(N)
p S.group_by(&:itself).values.map(&:size).inject(0){|a,b|a += b*(b-1)/2}