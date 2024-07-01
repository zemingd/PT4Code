def geti; gets.to_i end
def getis; gets.split.map &:to_i end
def getin n;  n.times.map{geti}  end
def getisn n; n.times.map{getis} end
YES = "YES"; NO = "NO"; Yes = "Yes"; No = "No";

a,b,c,d=getis
puts %w(Balanced Left Right)[a+b<=>c+d]

__END__
puts (gets.sub(?\s,'').to_i**0.5)%1==0? "Yes" : "No"

a,b=getis
puts a*b%2==0? "Even" : "Odd"
