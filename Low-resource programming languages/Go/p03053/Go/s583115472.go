package main
import "fmt"
func main() {
  var h,w int
  var s string
  fmt.Scan(&h,&w)
  black := Points{}
  white := Points{}
  for i:=0;i<h;i++ {
    fmt.Scan(&s)
    for j:=0;j<w;j++ {
      if s[j:j+1] == "#" {
        black = append(black,Point{i+1,j+1})
      } else {
        white = append(white,Point{i+1,j+1})
      }
    }
  }
  if abs(len(black)-len(white)) > h+w {
    var max int
    for i:=0;i<len(white);i++ {
      var m int = h*w+1
      for j:=0;j<len(black);j++ {
        var t int = white[i].Distance(black[j])
        if m > t { m = t }
      }
      if max < m { max = m }
    }
    fmt.Println(max)
  } else {
    var a [][]int = newmatrix(h+2,w+2)
    for i:=0;i<len(white);i++ {
      a[black[i].x][black[i].y] = 1
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
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
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
type Point struct { x,y int }
func(p Point) Distance(t Point) int {
  return abs(p.x-t.x)+abs(p.y-t.y)
}
type Points []Point