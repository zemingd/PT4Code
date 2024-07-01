N = (gets).to_i
A = (gets).to_i
B = (gets).to_i
C = (gets).to_i
D = (gets).to_i
E = (gets).to_i

pas = [N,0,0,0,0,0]
loc = [0,A,B,C,D,E]
count = 0
#p pas
#p loc

def cut(x,a)
    return x<=a ? x : a
end

=begin
while pas[5] < N
    5.downto(1) do |n|
        next if pas[n-1] <= 0
        pa = cut(pas[n-1], loc[n])
        pas[n] = pas[n] + pa
        pas[n-1] = pas[n-1] - pa
    end
    #p pas
    count = count + 1
end
* 単純な話、ボトルネックですべての性能が決まるから、そこで
  計算してしまえば良い気がする
=end

nek = loc[1..5].min
q,r = N.divmod(nek)
base_time = q + (r==0 ? 0 : 1)

count = base_time + 4

puts count