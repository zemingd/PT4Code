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
  2 4 2
  ".split("\n")
  iotmp.each{|s|
    tmp << s.strip
  }
end


class Range
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def display
    if (@a<@b)&&(@b<@c)
      puts "Yes"
    else
      puts "No"
    end
  end
end


a,b,c = tmp[0].split(" ").map(&:to_i)

range = Range.new(a,b,c)

range.display