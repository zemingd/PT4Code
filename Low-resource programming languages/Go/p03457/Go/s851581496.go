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
func NextInt() int {
  var n int
  n,_ = strconv.Atoi(NextLine())
  return n
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
  var n int = NextInt()
  var t0,x0,y0 int
  var t1,x1,y1 int
  var dt,dd int
  var txy []int
  t0,x0,y0 = 0,0,0
  for i:=0;i<n;i++ {
    txy = NextIntArray()
    t1,x1,y1 = txy[0],txy[1],txy[2]
    dt = t1-t0
    dd = abs(x1-x0) + abs(y1-y0)
    if dt >= dd && (dt-dd)%2 == 0 {
      t0,x0,y0 = t1,x1,y1
      continue
    } else {
      fmt.Println("No")
      os.Exit(0)
    }
  }
  fmt.Println("Yes")
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}