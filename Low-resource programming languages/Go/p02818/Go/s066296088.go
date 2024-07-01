package main
import(
  "fmt"
)
func main(){
  var a, b, k, i int64
  fmt.Scan(&a, &b, &k)
  if a+b<=k{
    fmt.Println("0 0")
    return
  }
  for i=0;i<k;i++{
    if a>0{
      a--
    }else{
      b--
      if b==0{
        fmt.Println("0 0")
        return
      }
    }
  }
  fmt.Println(a,b)
 }
