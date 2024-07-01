io = STDIN
N=io.gets.to_i
$a=io.gets.split.map(&:to_i)
max=$a.max
bitsize=max.to_s(2).size
bit=$a.map{|aa|aa.to_s(2).rjust(bitsize,"0").split(//)}
def check2(a)
  h=a.group_by{|aa|aa%4}
  ar=[h[1],h[2],h[3]].transpose.flatten
  (ar+[ar[0]]).each_cons(3) do |x,y,z|
    return 'No' if x^z!=y
  end
  'Yes'
end
puts check2($a)
