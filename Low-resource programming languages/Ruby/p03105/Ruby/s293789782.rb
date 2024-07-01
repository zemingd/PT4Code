class Main
  def self.main lines
    a,b,c = lines[0].split.map(&:to_i)
    [b/a,c].min
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end