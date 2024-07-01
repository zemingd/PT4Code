package main
import(
  "fmt"
)
func main(){
  var s, t string
  ans:=0
  fmt.Scan(&s, &t)
  for i:=0;i<len(s);i++{
    if s[i]!=t[i]{
      ans++
    }
  }
  fmt.Println(ans)
}
