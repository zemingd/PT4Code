MODE = "stdio"
require 'matrix'
include Math
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = '3
  1 2 3 4 5 6
  6 5 4 3 2 1
  5 4 3 2 1 6'.split("\n")
  tmp.each{|s|
    line << s.strip
  }
end
class Dice
  attr_accessor :top, :front, :right, :left, :back, :bottom
  def initialize(arr)
    @top = arr[0]
    @front = arr[1]
    @right = arr[2]
    @left = arr[3]
    @back = arr[4]
    @bottom = arr[5]
  end

  def get_arr
    [@top, @front, @right, @left, @back, @bottom]
  end

  def set_arr(arr)
    @top = arr[0]
    @front = arr[1]
    @right = arr[2]
    @left = arr[3]
    @back = arr[4]
    @bottom = arr[5]
  end

  def roll(s)
    case s
    when "E"
      @top, @right, @bottom, @left = @left,@top, @right, @bottom
    when "W"
      @top, @right, @bottom, @left = @right, @bottom, @left, @top
    when "N"
      @top, @back , @bottom, @front = @front,@top, @back , @bottom
    when "S"
      @top, @back , @bottom, @front = @back , @bottom, @front,@top
    end
    [@top, @front, @right, @left, @back, @bottom]
  end

  def rolls(s)
    s.chars.each do|s|
      roll(s)
    end
    [@top, @front, @right, @left, @back, @bottom]
  end

  def spin
    @front, @right, @back, @left = @left, @front, @right, @back
    [@top, @front, @right, @left, @back, @bottom]
  end

  def equal?(dice)
    tmp = self.get_arr
    cmd = ["", "E","W","N","S","EE"]
    cmd.each do |c|
      self.set_arr(tmp)
      self.rolls(c)
      if(self.top == dice.top)
        4.times do
          if(self.get_arr == dice.get_arr)
            return true
          else
            self.spin
          end
        end
      end
    end
    return false
  end
end

n = line[0].to_i
dice = []

(1..n).each do |num|
  arr = line[num].split(" ").map(&:to_i)
  dice << Dice.new(arr)
end

f = false
dice.combination(2).each do |dice1, dice2|
  f |= dice1.equal?(dice2)
end
puts "Yes" if f==false
puts "No" if f==true