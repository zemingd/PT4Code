
class FavoriteSoundAnswer
  def self.favorite_sound(price, wallet, max_count)
    [(wallet / price), max_count].min
  end
end

price, wallet, max_count = STDIN.read.split(/\s+/).map(&:to_i)
puts FavoriteSoundAnswer.favorite_sound(price, wallet, max_count)