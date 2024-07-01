times = (1..5).map { gets.to_i }
mod_times = times.map { |time| time % 10 }
losslessnum = mod_times.sort.uniq.delete_if{ |i| i == 0 }[0]
losslessindex = mod_times.index(losslessnum)

times.each.with_index do |time, i|
  next if i == losslessindex
  times[i] = 10 * (times[i]/10.0).ceil
end

puts times.sum