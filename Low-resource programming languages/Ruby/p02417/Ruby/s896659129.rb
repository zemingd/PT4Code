n_ch = {}
[*"a".."z"].each do |ch|
  n_ch[ch] = 0
end

while gets
  $_.split("").map(&:downcase).each do |ch|
    if n_ch.has_key?(ch)
      n_ch[ch] += 1
    end
  end
end

[*"a".."z"].each do |ch|
  puts "#{ch} : #{n_ch[ch]}"
end

