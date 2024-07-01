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
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}
type Point struct { x,y int }
func(p Point) Distance(t Point) int {
  return abs(p.x-t.x)+abs(p.y-t.y)
}
type Points []Point