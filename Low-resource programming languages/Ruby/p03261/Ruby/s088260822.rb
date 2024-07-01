require 'set'
used=Set.new
cur=nil
gets.to_i.times do
  pre=cur
  cur=gets.chomp
  pre=cur[0] unless pre
  if pre[-1]!=cur[0] || used.include?(cur)
    puts :No
    exit
  end
  used << cur
end
puts :Yes
