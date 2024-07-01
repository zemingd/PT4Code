n,c = gets.split(" ").map(&:to_i)

task = []
n.times do
  input = gets.split(" ").map(&:to_i)
  task << input
end

rec = [[]]

task.sort_by!{|t| t[0]}
rec[0] << task.slice!(0)

task.each do |t|
  rec.each_with_index do |r,idx|
#    puts "rec #{idx} ---"
#    puts "t:#{t}  r.last: #{r.last}"
    # スタートとエンドが同じ
    if t[0] == r.last[1]
      # チャンネルが同じ
      if t[2] == r.last[2]
        r << t
        break
      else
#        puts "idx #{idx}  rec.size:#{rec.size}"
        if idx == rec.size-1
          rec << [t]
          break
        else
          next
        end
      end
    elsif t[0] < r.last[1] # スタートがエンドより早い
      if idx == rec.size-1
        rec << [t]
        break
      else
        next
      end
    else
      # 被らない
      r << t
      break
    end

  end

#  puts "=====rec====="
#  rec.each_with_index do |r,i|
#    puts "rec #{i}"
#    p r
#  end
#  puts "=====rec=====\n\n"
end

#rec.each_with_index do |r,i|
#  puts "rec #{i}"
#  p r
#end

puts rec.size