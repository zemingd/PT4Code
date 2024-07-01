class V < Array
  attr_accessor :x, :i
  def initialize(index)
    @i = index
    @x = 0
  end
  def val
    $stderr.puts "calc [#{@i}]"
    self.each do |p|
      $stderr.puts "#{p.i} => #{p.to_s}"
      p.delete(self)
      p.x += @x
      $stderr.puts "#{p.i} ==> #{p.to_s}"
      p.val
      $stderr.puts "#{p.i} ===> #{p.to_s}"
    end
    self.replace([])
    @x
  end
  def ==(other)
    self.equal?(other)
  end
  def to_s
    "i=#{@i} x=#{@x} peer=#{self.map{|p|p.i}}"
  end
end

n, q = ARGF.gets.split.map(&:to_i)
t = Array.new(n+1) {|i| V.new(i) }
(n-1).times do
  a, b = ARGF.gets.split.map(&:to_i)
  t[a] << t[b]
  t[b] << t[a]
end
q.times do
  p, x = ARGF.gets.split.map(&:to_i)
  t[p].x += x
end

t.shift
$stderr.puts t.map {|v| v.to_s }
puts "#{t.map{|v| v.val.to_s }.join(' ')}"
$stderr.puts t.map {|v| v.to_s }
