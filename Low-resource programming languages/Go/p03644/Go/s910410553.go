package main
import . "fmt"
import . "os"
func main() {
  var n int
  var l []int
  l = []int{1,2,4,8,16,32,64,128}
  Scan(&n)
  for i:=0;i<7;i++ {
    if l[i] <= n && n < l[i+1] {
      Println(l[i])
      Exit(0)
    }
  }
}