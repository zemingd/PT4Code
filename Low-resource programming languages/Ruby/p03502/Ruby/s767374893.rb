def geti; gets.to_i end
def getis; gets.split.map &:to_i end
def getin n;  n.times.map{geti}  end
def getisn n; n.times.map{getis} end
YES = "YES"; NO = "NO"; Yes = "Yes"; No = "No";

n = geti
puts n % n.to_s.chars.map(&:to_i).reduce(:+) == 0 ? Yes : No

__END__

n,a,b = getis
p [n*a,b].min

a,b,c = getis
p [a,b,c].any?(&:even?) ? 0 : [a*b,b*c,c*a].min

a,b=getis
puts a > 0 ? 'Positive' : b >= 0 ? 'Zero' : (b - a) % 2 == 1 ? 'Positive' : 'Negative'
