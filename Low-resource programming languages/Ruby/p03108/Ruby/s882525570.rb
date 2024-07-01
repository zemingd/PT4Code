require 'set'

class Main
  def self.main lines
    n,m = lines.shift.split.map(&:to_i)
    p "#{n}, #{m}"
    g = []
    c = [*1..(n-1)].inject(:+)
    r = []
    [*1..m].map do |x|
      r.push(c)
      a, b = lines.pop.split.map(&:to_i)
      p "#{a}, #{b}"
      
      sa = g.select {|x| x.include?(a)}
      sa = sa.length == 0 ? nil : sa[0]
      sb = g.select {|x| x.include?(b)}
      sb = sb.length == 0 ? nil : sb[0]

      if sa && sb && sa != sb then
        g.delete(sa)
        g.delete(sb)
        g << sa + sb
        c -= sa.length + sb.length
      elsif sa then
        c -= sa.add?(b) ? sa.length - 1 : 0
      elsif sb then
        c -= sb.add?(a) ? sb.length - 1 : 0
      else # !sa && !sb
        g << Set.new([a, b])
        c -= 1
      end

      p g
      p c
    end
    r.reverse.join("\n") + "\n"
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end