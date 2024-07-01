package main
 
import "fmt"
 
func main (){
  var a,b int
  s1 := []int{1,2,3}
  fmt.Scan(&a,&b)
  s2 := remove(s1,a)
  s3 := remove(s2,b)
  fmt.Printf("%d",s3[0])
}
 
func remove(ints []int, n int) []int{
  result := []int{}
  for _, v := range ints{
    if v != n{
      result = append(result, v)
    }
  }
  return result
}
