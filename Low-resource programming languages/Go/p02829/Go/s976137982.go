package main
 
import "fmt"
 
func main (){
  var a,b int
  s := [3]int{1,2,3}
  fmt.Scan(&a,&b)
  s = remove(s,a)
  s = remove(s,b)
  fmt.Printf("%d", s[0])
}
 
func remove(ints []int, n int) []int{
  result := []int{}
  for _, v := range ints{
    if n != ints[v]{
      result = append(result, n)
    }
  }
  return result
}