def main(str)
  splits = str.split("\n")
  s, _q = splits[0..1]
  qs = splits[2..-1].map { |x| x.split(" ") }
  s0, s1 = "", ""
  flip = false
  qs.each do |x|
    case x[0]
    when "1"
      flip = !flip
    when "2"
      c = x[2]
      case x[1]
      when "1"
        if flip
          s1 << c
        else
          s0 << c
        end
      when "2"
        if flip
          s0 << c
        else
          s1 << c
        end
      else
        raise
      end
    else
      raise
    end
  end
  res = s0.reverse + s + s1
  flip ? res.reverse : res
end

puts main($stdin.read.chomp)