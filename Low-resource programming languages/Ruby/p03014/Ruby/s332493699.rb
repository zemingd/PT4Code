class Array
  def split(&ite)
    ite ||= proc { |a| !a }
    result = []
    tmp = []
    each do |a|
      if ite.call(a)
        result << tmp
        tmp = []
      else
        tmp << a
      end
    end
    result << tmp
    result.delete_if(&:empty?)
    result
  end
end

# 8, 13
h, w = gets.split.map &:to_i # tate, yoko
s = []
while ss = gets # 壊れてる階段
  s << ss.chomp.split(//)
end

s.sort_by! { |ss| ss.count { |a| a == '.' } }.reverse! # めんどい行は後ろに
# s = s.transpose
# s.sort_by! { |ss| -ss.split{|a|a=='#'}.map{|a|a.size}.max }
# s = s.transpose
ind = s.transpose.index{|a|a.all?{|aa|aa=='.'}}


mini = 0
s.size.times do |i|
  s[i][ind] = 'a'
  mini = [mini, s[i].split{|a|a=='#'}.select{|a|a.include?(?a)}[0].size].max
end
p mini + h - 1



# s = s.transpose
# pp  s
# s.sort_by! { |ss| ss.count { |a| a == '.' } }.reverse! # めんどい列は後ろに
# firstlines = s[0]
# s = s.transpose
# pp s
# mini = h * w
# p firstlines
# puts
# h.times do |i|
#   p s[i].split { |a| a == '#' }[0]
#   p s[i].split { |a| a == '#' }[0].size + firstlines.size - 1
# end
# [['.', '.', '.', '.', '#', '.'],
#  ['.', '.', '.', '.', '.', '#'],
#  ['#', '.', '#', '.', '.', '.'],
#  ['#', '.', '.', '#', '.', '.']]
#
# [['.', '.', '#', '.', '.', '.'],
#  ['.', '#', '.', '.', '.', '.'],
#  ['.', '.', '.', '.', '#', '#'],
#  ['.', '.', '.', '#', '.', '#']]
