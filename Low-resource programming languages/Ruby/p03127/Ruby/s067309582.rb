
require 'prime'
DBG = true
n = gets.to_i
a = gets.split.map{|z| z.to_i}
a.uniq!
fac0 = a[0].prime_division
fac = {}
for z in fac0
  fac[z[0]] = z[1]
end

for x in a
  y = x.prime_division
  for z in y
    p = z[0]
    if fac.has_key?(p)
      fac[p] = [ fac[p], z[1] ].min
    end
  end
end

x = 1
fac.each { |k,v|
  x *= k**v
}
puts "#{x}"
