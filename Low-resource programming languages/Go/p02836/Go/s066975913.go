package main
import(
  "fmt"
)

func main(){
  var s string
  var num, count int
  fmt.Scan(&s)
  count = 0
  num = len(s) / 2
  if len(s) % 2 == 0{
    num = len(s) / 2
  } else {
    num = (len(s) / 2) +1
  }
  for i:=0; i < num; i++{
    if s[i] != s[len(s)-i]{
      s[len(s)-i] = s[i]
      count++
    }
  }
  fmt.Printf("%d", count)
}