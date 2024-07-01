#! ruby -nl
unless $_ == '0'
  p $_.chars.map(&:to_i).inject(:+) 
end