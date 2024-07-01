puts /^(hi){1,5}$/.match(gets.chop.to_s) == nil ? "No" : "Yes"
