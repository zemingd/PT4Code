package main
import(
  "fmt"
)
func main(){
  var n, i, a int64
  a=100
  fmt.Scan(&n)
  for i=0;;i++{
    a+=a/100
    if a>=n{
      fmt.Println(i+1)
      return
    }
  }
}
