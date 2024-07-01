
class SA
  attr_accessor :tube

  def initialize
    @tube = [ ]
  end

  def insert obj
    b = 0
    e = @tube.length - 1

    if @tube.empty? or @tube[e] < obj
      @tube.push obj
      return
    elsif obj < @tube[b]
      @tube.unshift obj
      return
    end

    loop do
      c = b + (e - b) / 2
      case obj <=> @tube[c]
      when -1
        e = c - 1
      when 0
        @tube.insert(c, obj)
        break
      when +1
        b = c + 1
      end
      if e < b
        @tube.insert(b, obj)
        break
      end
    end
  end
end

def getline
  gets.split(/\s/).map(&:to_i)
end

x,y,z,k = getline
a = getline.sort
b = getline.sort
c = getline.sort

sa = SA.new

a.reverse_each do |ai|
  b.reverse_each do |bi|
    flag = true
    c.reverse_each do |ci|
      cake = ai + bi + ci
      if k <= sa.tube.length
        if sa.tube.first < cake
          sa.tube.shift
        else
          break
        end
      end
      sa.insert cake
      flag = false
    end
    break if flag
  end
end

for x in sa.tube.reverse_each
  p x
end
