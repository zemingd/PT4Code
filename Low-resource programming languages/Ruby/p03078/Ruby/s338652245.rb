
class SA
  attr_accessor :tube

  def initialize allow_duplicate:true
    @tube = [ ]
    @allow_duplicate = allow_duplicate
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
        if @allow_duplicate
          @tube.insert(c, obj)
        end
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
a = getline
b = getline
c = getline

# ---

sa = SA.new

for ai in a
  for bi in b
    for ci in c
      cake = ai + bi + ci
      if k <= sa.tube.length
        if sa.tube.first < cake
          sa.tube.shift
        else
          next
        end
      end
      sa.insert cake
    end
  end
end

for x in sa.tube.reverse_each
  p x
end
