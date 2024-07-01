package main
 
import "fmt"

func main() {
  var s string
  a := 0
  b := 0
  
  fmt.Scan(&s)
  
  for i:=0; i<len(s); i++{
    if s[i] == 48 {
      a++
    } else {
      b++
    }
  }
  
  if a<b {
    fmt.Println(a*2)
  } else {
    fmt.Println(b*2)
  }
  
}