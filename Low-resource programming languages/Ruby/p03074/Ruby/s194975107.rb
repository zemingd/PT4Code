N, K = gets.split.map(&:to_i)
S = gets.chomp
TF = S.chars.map{|c| c == '1'}

n = []

d = true
count = 0
for c in TF do
    if c == d then
        count += 1
    else
        n.push(count)
        d = !d
        count = 1
    end
end
n.push(count)

p [*0...N].select{|i| i%2 == 0}.map{|i|
    n.drop(i).take(2*K+1).inject(0,:+)
}.max
