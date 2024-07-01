
l, r = gets.split.map(&:to_i)

def fin(mm)
  p mm
  exit
end

m = 2019
if l == r
  m = (l*r).modulo 2019
else
  (l..r-1).each{|i|
    (i+1..r).each{|j|
      t = (i*j).modulo 2019
      m = t if m > t
      fin(m) if m.zero?
    }
  }
end

p m