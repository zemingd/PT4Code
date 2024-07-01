package main
 
import "fmt"
 
func main (){
  var a,b int
  s := []int{1,2,3}
  fmt.Scan(&a,&b)
  remove(s,a)
  remove(s,b)
  fmt.Printf("%d", s[0])
}
 
func remove(ints []int, n int) []int{
  result := []int{}
  for _, v := range ints{
    if v != n{
      result = append(result, n)
    }
  }
  return result
}
