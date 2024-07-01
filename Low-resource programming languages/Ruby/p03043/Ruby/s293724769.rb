def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

r = 0.0
n,k = cin
fn = n.to_f
fk = k.to_f

[*(1..n)].each do |x|
  if x >= k
    r += 1.0 / fn
    next
  end

  kai = Math.log2(fk / x.to_f).ceil
  r += (0.5**kai) / fn
end

puts r
