MODE = "stdio"
require 'matrix'

tmp = Array.new

class Integer
  def divisor_list2
    return [1] if self == 1
    (1..Math.sqrt(self).to_i).select do |i|
      self%i == 0
    end.map {|e| [e, self/e]}.flatten.uniq.sort
  end
end

if(defined? MODE)
  tmp = STDIN.read.split("\n")
else
  iotmp = "\
  3 8 1
  ".split("\n")
  iotmp.each{|s|
    tmp << s.strip
  }
end


class Three
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def display
    r = Array.new
    r = [@a, @b, @c]
    if (r[0]>r[1])
      r[0],r[1]=r[1],r[0]
    end
    if (r[1]>r[2])
      r[1],r[2]=r[2],r[1]
    end
    if (r[0]>r[1])
      r[0],r[1]=r[1],r[0]
    end
    print r[0]," ", r[1]," ", r[2],"\n"
  end
end


a,b,c = tmp[0].split(" ").map(&:to_i)

num = Three.new(a,b,c)

num.display