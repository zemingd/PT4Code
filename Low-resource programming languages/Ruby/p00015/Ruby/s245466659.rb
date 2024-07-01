def n
gets.to_i
end
n.times{puts (s=n+n)>=1e80?:overflow:s}