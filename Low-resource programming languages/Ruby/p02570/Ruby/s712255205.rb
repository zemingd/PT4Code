D, T, S = gets.split.map(&:to_i)

# $stdout = File.open(File::NULL, "w")

def main
  return D <= T * S ? "Yes" : "No"
end

STDOUT.puts main
