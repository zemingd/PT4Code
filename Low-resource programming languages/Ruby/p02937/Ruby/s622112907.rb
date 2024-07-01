# coding: utf-8
class LoopString
  def initialize(s)
    @str = s.chomp
    @len = @str.length
  end
  def index(ch, pos=0) # 複数文字は考慮せず
    mod = pos % @len
    sss = (mod == 0) ? @str : @str[mod, @len-mod] + @str
    idx = sss.index(ch)
#    $stderr.puts("#{pos}: '#{sss}'.index('#{ch}') = #{idx}")
    (idx == nil) ? -1 : pos + idx
  end
  def bubun(t)
    t.chomp.split('').reduce(0) do |pos, ch|
      p2 = self.index(ch, pos)
      return p2 if p2 < 0
      p2 + 1
    end
  end
  def to_s
    @str
  end
end

puts LoopString.new(ARGF.gets).bubun(ARGF.gets)
