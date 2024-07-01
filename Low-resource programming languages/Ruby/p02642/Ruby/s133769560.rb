getter = -> {
   require 'stringio'
  _in = StringIO.new
  while l = gets
    _in << l
  end
  _in.string
}
s = getter.call.split(/\R/)
n = s[0].to_i
*a = s[1].split(' ').map(&:to_i)

class Check
    def initialize(n, _a)
        @n = n
        @a = _a
    end
    def check
        counter = 0
        @n.times{|i|
            counter += 1 if divable?(i)
        }
        counter
    end
    def divable?(i)
        require 'prime'
        ai = @a[i]
        return true if (Prime.prime?(ai) && (!@a.include?(ai)))
        @n.times{|j|
            next if i == j
            aj = @a[j]
            return false if ai == aj
            next if ai < aj
            next if ai.modulo(aj) != 0
            return false
        }
        true
    end
end


c = Check.new(n, a)
puts c.check

