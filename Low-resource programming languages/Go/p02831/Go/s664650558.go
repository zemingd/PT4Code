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
    if r==0{
      break l
    }
    a=b
    b=r
    r=a%b
    }
  fmt.Println(x/b)
}
