package main
import(
  "fmt"
)
func main(){
  var a, b, r, x, temp int64
  fmt.Scan(&a, &b)
  x=a*b
  if a<b{
    temp=a
    a=b
    b=temp
  }
  r=a%b
  l:
  for{
    a=b
    b=r
    r=a%b
    if r==0{
      break l
    }
    }
  fmt.Println(x/b)
}
