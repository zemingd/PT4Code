package main
 
import(
  "fmt"
  "sort"
)
 
func main(){
  var a,b,c,d int
  fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
  var ary []int
  
  ary = append(ary, a*c)
  ary = append(ary, a*d)
  ary = append(ary, b*c)
  ary = append(ary, b*d)
  
  sort.Ints(ary)
  
  fmt.Printf("%d",ary[3])
  
  
}