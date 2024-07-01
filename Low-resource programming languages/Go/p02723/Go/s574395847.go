package atcoder

func CoffeLike(s string) bool {
  for i := 0 ; i < len(s); i++ {
    if s[3] == s[4] && s[5] == s[6] {
      return true
    }
  }
  return false
}