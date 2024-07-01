n, m, l = gets.split.map(&:to_i)
ary_A = []
ary_B = []
ary_C = []

n.times do
  ary_A << gets.split.map(&:to_i)
end
m.times do
  ary_B << gets.split.map(&:to_i)
end

n.times do |i|
    l.times do |j|
        num = 0
        m.times do |k|
            num += ary_A[i][k] * ary_B[k][j]
        end
        ary_C << num
    end
end

i = 1
ary_C.each do |num|
    if i  == l
        i = 0
        puts num
    else
        print num, " "
    end
    i += 1
end

