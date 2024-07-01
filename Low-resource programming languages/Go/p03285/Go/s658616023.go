package main
import(
  "fmt"
)
func main(){
  var n, i, j int
  fmt.Scan(&n)
  for i=0;i<=100;i++{
    for j=0;j<=100;j++{
      if i*4+j*7==n{
        fmt.Println("Yes")
        return
      }
    }
  }
  fmt.Println("No")
}
