puts lambda{|a|if a[2]-a[4]>=0&&a[3]-a[4]>=0&&a[2]+a[4]<=a[0]&&a[3]+a[4]<=a[1]then"YES"else"NO"end}.call(gets.split.map(&:to_i))