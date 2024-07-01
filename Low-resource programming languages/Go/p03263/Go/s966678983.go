package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)

const size = 1000000
var reader = bufio.NewReaderSize(os.Stdin,size)
func NextLine() string {
  var line,buffer []byte
  var isPrefix bool = true
  var err error
  for ;isPrefix; {
    line,isPrefix,err = reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer,line...)
  }
  return string(buffer)
}
func NextInts() (int,int) {
  var x,y int
  var s []string = strings.Split(NextLine()," ")
  x,_ = strconv.Atoi(s[0])
  y,_ = strconv.Atoi(s[1])
  return x,y
}
func NextIntArray() []int {
  var s []string = strings.Split(NextLine()," ")
  var n int = len(s)
  var a []int = make([]int,n)
  for i:=0;i<n;i++ {
    a[i],_ = strconv.Atoi(s[i])
  }
  return a
}

func main() {
  var h,w int = NextInts()
  ps := Points{}
  for i:=0;i<h;i++ {
    var a []int = NextIntArray()
    for j:=0;j<w;j++ {
      if a[j]%2 == 1 {
        ps = append(ps,Point{i+1,j+1})
      }
    }
  }
  op := Points{}
  for ;len(ps)>1; {
    var p Point = ps[0]
    ps = ps[1:]
    var min int = 1000000
    var idx int = -1
    for i:=0;i<len(ps);i++ {
      if min > abs(ps[i].x-p.x)+abs(ps[i].y-p.y) {
        min = abs(ps[i].x-p.x)+abs(ps[i].y-p.y)
        idx = i
      }
    }
    var t Point = ps[idx]
    ps = append(ps[:idx],ps[idx+1:]...)
    var dx int = t.x - p.x
    var dy int = t.y - p.y
    var u Point = Point{p.x,p.y}
    if dx != 0 {
      dx /= abs(dx)
      for ;u.x!=t.x;{
        op = append(op,u)
        u = Point{u.x+dx,u.y}
        op = append(op,u)
      }
    }
    if dy != 0 {
      dy /= abs(dy)
      for ;u.y!=t.y;{
        op = append(op,u)
        u = Point{u.x,u.y+dy}
        op = append(op,u)
      }
    }
  }
  fmt.Println(len(op)/2)
  for i:=0;i<len(op);i+=2 {
    fmt.Println(op[i].x,op[i].y,op[i+1].x,op[i+1].y)
  }
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}

type Point struct {
  x int
  y int
}
type Points []Point