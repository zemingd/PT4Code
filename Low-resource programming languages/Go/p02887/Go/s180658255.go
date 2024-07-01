package main
import(
  "fmt"
)
func main(){
  var n, i int
  var s string
  fmt.Scan(&n, &s)
  temp:=0
  for i=1;i<len(s);i++{
    if s[i-1]!=s[i]{
      temp++
    }
  }
  fmt.Println(temp+1)
}
