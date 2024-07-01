package main
import . "fmt"
func main() {
  var s,t string
  var j int
  Scan(&s)
  t = ""
  j = 0
  for i:=0;i<len(s);i++ {
    if s[i:i+1] != "B" {
      t += s[i:i+1]
      j++
    } else {
      if j > 0 { j-- }
      t = t[:j]
    }
  }
  Println(t)
}