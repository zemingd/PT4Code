#coding: euc-jp
class Main
  def self.main
    n = read1
    h = read2
    max = 0
    count = 0
    n.times do |i|
      if max <= h[i] then
        max = h[i]
        count += 1
      end
    end
    puts count
  end
  
  def self.read1
    gets.chomp.to_i
  end

  def self.read2
    gets.chomp.split.map(&:to_i)
  end
end

Main.main
