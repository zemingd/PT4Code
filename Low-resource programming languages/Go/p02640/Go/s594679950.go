package main
import(
  "fmt"
)
func main(){
  var x, y, i, j int 
  fmt.Scan(&x, &y)
  for i=0;i<100;i++{
    for j=0;j<100;j++{
      if 2*i+4*j==y&&i+j==x{
        fmt.Println("Yes")
        return
      }
    }
  }
  fmt.Println("No")
}
