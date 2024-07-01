require "prime"
l=Prime.each(100100).to_a
n=gets.to_i
l.each do |ll|
  if ll>=n
    puts ll
    exit
  end
end
