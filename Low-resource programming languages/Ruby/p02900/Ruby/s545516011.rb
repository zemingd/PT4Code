A,B = gets.split.map(&:to_i)

g = A.gcd(B)

cda = []
cdb = []
(1..g).each do |i|
  cda << i if A%i == 0
  cdb << i if B%i == 0
end

# 公約数
cd = (cda & cdb)

maxnum = 0
(1..cd.length).each do |i|
  cd.combination(i).to_a.each do |c|
    so = true
    c.combination(2).to_a.each do |c2|
      if c2[0].gcd(c2[1]) != 1
        so = false
        break
      end
    end
    maxnum = i if so
  end
end

p maxnum