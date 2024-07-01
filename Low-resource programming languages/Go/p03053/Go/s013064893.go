package main
import "fmt"
func main() {
  var h,w int
  var s string
  fmt.Scan(&h,&w)
  var a [][]int = newmatrix(h+2,w+2)
  for i:=1;i<h+1;i++ {
    fmt.Scan(&s)
    for j:=1;j<w+1;j++ {
      if s[j-1:j] == "#" { a[i][j] = 1 }
    }
  }
  var k int = 0
  for ;!check(h,w,a);k++ {
    var b [][]int = newmatrix(h+2,w+2)
    for i:=1;i<h+1;i++ {
      for j:=1;j<w+1;j++ {
        if a[i][j] == 1 {
          b[i][j] = 1
          b[i-1][j] = 1
          b[i+1][j] = 1
          b[i][j-1] = 1
          b[i][j+1] = 1
        }
      }
    }
    a = b
  }
  fmt.Println(k)
}
func newmatrix(h,w int) [][]int {
  var a [][]int = make([][]int,h+2)
  for i:=0;i<h+2;i++ {
    a[i] = make([]int,w+2)
  }
  return a
}
func check(h,w int,a [][]int) bool {
  for i:=1;i<h+1;i++ {
    for j:=1;j<w+1;j++ {
      if a[i][j] == 0 { return false }
    }
  }
  return true
}