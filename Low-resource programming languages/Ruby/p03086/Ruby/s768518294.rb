#coding: euc-jp
class Main
  def self.main
    s = read
    l = s.length
    c = 0
    m = 0
    l.times do |i|
      if /[ATGC]/ === s[i] then
        c += 1
      else
        if m < c then
          m = c
        end
        c = 0
      end
    end
    puts m
  end

  def self.read
    gets.chomp
  end
end

Main.main
