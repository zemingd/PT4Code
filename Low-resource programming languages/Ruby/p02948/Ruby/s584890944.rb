
class Array
  def delete_first(&block)
    self.each_with_index do |val, i|
      if block.yield(val)
        return self.delete_at(i)
      end
    end
    return nil
  end
end

n, m = $stdin.gets.split.map(&:to_i)
tasks = (1..n).map { $stdin.gets.split.map(&:to_i) }
tasks.sort!{|a,b| (b[0]*b[1] <=> a[0]*a[1]).nonzero? || (a[0] <=> b[0]) }

res = 0
(0..m).each do |day|
  task = tasks.delete_first{|t| day + t[0] <= m }  
  break unless task
  res += task[1]
end
puts res
