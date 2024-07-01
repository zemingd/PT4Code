<pre>tasks = []
3.times do
  tasks.append(gets.to_i)
end

result = nil
3.times do |i|
  3.times do |j|
    3.times do |k|
      if i!=j &amp;&amp; i!=k &amp;&amp; j!=k
        sum = (tasks[k]-tasks[i]).abs + (tasks[j]-tasks[i]).abs
        if result.nil? || result &gt; sum
          result = sum
        end
      end
    end
  end
end

puts result</pre>