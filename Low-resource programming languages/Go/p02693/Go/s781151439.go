package main
import(
  "fmt"
)
func main(){
  var k, n, m, i int
  fmt.Scan(&k, &n, &m)
  for i=n;i<=m;i++{
    if i%k==0{
      fmt.Println("OK")
      return
    }
  }
  fmt.Println("NG")
}
