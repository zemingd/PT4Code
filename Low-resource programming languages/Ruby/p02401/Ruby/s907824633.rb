while (a = gets.split(" "))[1] != "?"
  p case a[1]
    when "+"; a[0].to_i + a[2].to_i
    when "-"; a[0].to_i - a[2].to_i
    when "*"; a[0].to_i * a[2].to_i
    when "/"; a[0].to_i / a[2].to_i
    end
end