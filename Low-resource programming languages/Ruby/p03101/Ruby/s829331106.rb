class Main
  def self.main lines
    hh,ww = lines[0].split.map(&:to_i)
    h,w = lines[1].split.map(&:to_i)
    (hh*ww-h*ww-hh*w+h*w).to_s
  end
end

if $0 == __FILE__
  $stdout = open('/dev/null', 'w')
  r = Main.main STDIN.readlines
  $stdout = STDOUT
  puts r
end