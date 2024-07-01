class Light
  def initialize(switches, p)
    @switches = switches
    @p = p
  end

  def up?(switches)
    (@switches.count { |s| switches[s] } % 2) == @p
  end
end

def switches(switches, lights)
  ans = 0

  recursive = ->(depth) {
    if switches.size <= depth
      ans += 1 if lights.all? { |l| l.up?(switches) }
      return
    end
    switches[depth] = false
    recursive.call(depth + 1)
    switches[depth] = true
    recursive.call(depth + 1)
  }
  recursive.call(0)
  ans
end

n, m = gets.split.chomp
switches = Array.new(n) { false }
params = []
m.times do
  param = gets.split.map(&:to_i)
  param.shift
  param.map! { |n| n - 1 }
  params << param
end

p = gets.split.map(&:to_i)
lights = []
params.zip(p).each do |s, p|
  lights << Light.new(s, p)
end

puts switches(switches, lights)
