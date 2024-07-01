#coding: euc-jp
class Main
  def self.main
    n, k = read2
    s = read1
    consecutive = [0]
    csnum = 1
    count = 0
    status = s[0].to_i
    n.times do |i|
      if status == s[i].to_i then
        consecutive[-1] += 1
      else
        consecutive += [1]
        csnum += 1
        status = s[i].to_i
      end
    end

    pos1 = 0
    pos2 = k * 2 - (s[0].to_i == 0 ? 1 : 0)
    return n if csnum <= pos2
    pos1.upto(pos2) do |i|
      count += consecutive[i]
    end
    max = count

    if s[0] == 0 then
      count += consecutive[pos2 + 1] if csnum <= pos2 + 2
      count += consecutive[pos2 + 2] if csnum <= pos2 + 3
      count -= consecutive[pos1]
      pos2 += 2
      pos1 += 1
      max = count if max < count
    end

    status = 1

    (pos2 + 1).upto(csnum - 1) do |i|
      status = (status + 1) % 2
      count += consecutive[i]
      count -= consecutive[pos1]
      pos1 += 1
      max = count if status == 1 && max < count
    end
    count -= consecutive[pos1]
    max = count if max < count

    return max
  end

  def self.read1
    gets.chomp
  end

  def self.read2
    gets.chomp.split.map(&:to_i)
  end
end

puts Main.main
