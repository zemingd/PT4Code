package atcoder


func CoffeLike(s string) bool {
  for i := range s {
    if s[3] == s[4] && s[5] == s[6] {
    	return true
    }
  
  } 
    return false
}