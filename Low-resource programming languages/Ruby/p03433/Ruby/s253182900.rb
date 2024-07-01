puts proc{|n,a| n%500<=a ? "Yes" : "No"}.(*$<.map(&:to_i))
