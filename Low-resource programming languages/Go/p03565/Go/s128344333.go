package main
import "fmt"
func main() {
  var s,t,sp string
  var n,l int
  m := make(map[string]struct{})
  fmt.Scan(&s)
  fmt.Scan(&t)
  n = len(s)
  l = len(t)
  var trune []rune = []rune(t)
  Loop_i:
  for i:=0;i<n-l+1;i++ {
    for j:=0;j<l;j++ {
      if s[i+j:i+j+1] != t[j:j+1] &&
      s[i+j:i+j+1] != "?" {
        continue Loop_i
      }
    }
    var srune []rune = []rune(s)
    for j:=0;j<l;j++ {
      srune[i+j] = trune[j]
    }
    for j:=0;j<n;j++ {
      if srune[j] == 63 { srune[j] = 97 }
    }
    sp = string(srune)
    m[sp] = struct{}{}
  }
  if len(m) == 0 {
    fmt.Println("UNRESTORABLE")
  } else {
    sp = ""
    for i:=0;i<n;i++ { sp += "z" }
    for k,_ := range m {
      if sp > k { sp = k }
    }
    fmt.Println(sp)
  }
}