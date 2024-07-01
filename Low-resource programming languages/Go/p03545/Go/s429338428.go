package main
import "fmt"
func main() {
  var a,b,c,d int
  fmt.Scanf("%d",&d)
  a = d / 1000
  d -= a * 1000
  b = d / 100
  d -= b * 100
  c = d / 10
  d -= c * 10
  switch 7-a {
    case  b+c+d : fmt.Printf("%d+%d+%d+%d=7\n",a,b,c,d)
    case -b+c+d : fmt.Printf("%d-%d+%d+%d=7\n",a,b,c,d)
    case  b-c+d : fmt.Printf("%d+%d-%d+%d=7\n",a,b,c,d)
    case  b+c-d : fmt.Printf("%d+%d+%d-%d=7\n",a,b,c,d)
    case -b-c+d : fmt.Printf("%d-%d-%d+%d=7\n",a,b,c,d)
    case  b-c-d : fmt.Printf("%d+%d-%d-%d=7\n",a,b,c,d)
    case -b+c-d : fmt.Printf("%d-%d+%d-%d=7\n",a,b,c,d)
    case -b-c-d : fmt.Printf("%d-%d-%d-%d=7\n",a,b,c,d)
  }
}