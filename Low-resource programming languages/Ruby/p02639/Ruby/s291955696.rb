def int_split(line); line.split(' ').map(&:to_i); end
def cin_ina; int_split(gets); end

xs=cin_ina
p 15-xs.sum