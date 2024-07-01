package main
import(
  "fmt"
)
func main(){
  var i, n int
  fmt.Scan(&n)
  ans:=0
  for i=1;i<=n;i++{
    if i%3!=0&&i%5!=0{
      ans+=i
    }
  }
  fmt.Println(ans)
}
