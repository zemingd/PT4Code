# coding: utf-8
class LoopString < Array
  def initialize(s)
    self.replace(s.chomp.split(''))
    @place = Hash.new {|h,k| h[k] = [] }
    self.each_with_index do |ch, idx|
      @place[ch] << idx
    end
    @place.default = nil
  end
  def index(ch, pos)
    return -1 unless @place[ch]
    mod = pos % self.length
    @place[ch].each do |idx|
      if idx >= mod
        return pos - mod + idx
      end
    end
    return pos - mod + self.length + @place[ch][0]
  end
  def bubun(t)
    t.chomp.split('').reduce(0) do |pos, ch|
      p2 = self.index(ch, pos)
      return -1 if p2 < 0
      p2 + 1
    end
  end
  def to_s
    @str
  end
end

puts LoopString.new(ARGF.gets).bubun(ARGF.gets)
