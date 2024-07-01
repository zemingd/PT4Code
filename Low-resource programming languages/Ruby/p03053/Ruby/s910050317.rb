def div(n)
  n = n/2
  @ans += 1
  return if n == 0

  div(n)
end

h, w = gets.split.map(&:to_i)
a = []
h.times { a << gets.chomp }
co = []
a.each do |e|
  co << e.split('#').map{|ho| ho.length}.sort[-1]
end
m = co.sort[-1]
@ans = 0
div(m)
puts @ans