package main
import "fmt"
func main() {
  var k,s,m int
  fmt.Scan(&k,&s)
  for x:=0;x<k+1;x++ {
    for y:=0;y<k+1;y++ {
      z := s-x-y
      if 0 <= z && z <= k { m++ }
    }
  }
  fmt.Println(m)
}