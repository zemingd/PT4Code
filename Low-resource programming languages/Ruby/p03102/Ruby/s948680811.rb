class Main
  def self.main lines
    n,m,c = lines.shift.split.map(&:to_i)
    p n, m, c
    bs = lines.shift.split.map(&:to_i)
    p bs
    cnt = 0
    n.times do |a|
      as = lines.shift.split.map(&:to_i)
      p as
      x = c
      m.times do |mm|
        x += as[mm]*bs[mm]
      end
      cnt += 1 if x > 0
    end
    cnt
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end