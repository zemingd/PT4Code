getter = -> {
   require 'stringio'
  _in = StringIO.new
  while l = gets
    _in << l
  end
  _in.string
}
s = getter.call.split(/\R/)

class Jdg
    def initialize(str)
        dfn(str)
    end
    def dfn(s)
        @a,@v = s[0].split(' ').map(&:to_i)
        @b,@w = s[1].split(' ').map(&:to_i)
        @t = s[2].to_i
    end
    def diff
        (@b-@a).abs
    end
    def rel_spd
        (@v-@w)
    end
    def judge
        return false if @w >= @v
        return true if diff.div(rel_spd) <= @t
        false
    end
end

if Jdg.new(s).judge
    puts 'YES'
else
    puts 'NO'
end