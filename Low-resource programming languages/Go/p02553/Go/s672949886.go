package main
 
import(
  "fmt"
)
 
func main(){
  var a,b,c,d int
  fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
  if(b > 0 && d > 0){
    fmt.Printf("%d", b*d)
    return
  }
  if(b < 0 && d > 0){
    fmt.Printf("%d", b*c)
    return
  }
  if(b > 0 && d < 0){
    fmt.Printf("%d", a*d)
    return
  }
  if(b < 0 && d < 0){
    fmt.Printf("%d", a*c)
    return
  }
  if(b == 0 && d > 0){
    fmt.Printf("%d", 0)
    return
  }else if(d == 0 && b >0){
    fmt.Printf("%d", 0)
    return
  }else{
    fmt.Printf("%d", a*c)
    return
  }
}