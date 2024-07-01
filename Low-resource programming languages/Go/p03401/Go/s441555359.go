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
  var a []int = make([]int,n+2)
  for i:=1;i<n+1;i++ {
    a[i],_ = strconv.Atoi(s[i-1])
  }
  return a
}

func main() {
  var n int = NextInt()
  var a []int = NextIntArray()
  var s,t int
  s = 0
  for i:=0;i<n+1;i++ { s += abs(a[i+1]-a[i]) }
  for i:=1;i<n+1;i++ {
    t = s-abs(a[i]-a[i-1])-abs(a[i+1]-a[i])+abs(a[i+1]-a[i-1])
    fmt.Println(t)
  }
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}