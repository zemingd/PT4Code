#! /bin/ruby

chars= gets.chomp

TARGETS = ['A','G','C','T']
tmp_candidate = ""
candidate = ""
chars.each_char do |c|
  if TARGETS.include?(c)
    tmp_candidate << c
  else
    if tmp_candidate.length > candidate.length
      candidate = tmp_candidate
      tmp_candidate = ""
    end
  end
end
puts candidate.length
