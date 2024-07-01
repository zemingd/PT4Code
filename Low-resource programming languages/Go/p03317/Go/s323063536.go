package main

import (
  "bufio"
  "fmt"
  "math"
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
func NextStringArray() []string {
  return strings.Split(NextLine()," ")
}
func NextIntArray() []int {
  var s []string = NextStringArray()
  var n int = len(s)
  var a []int = make([]int,n)
  for i:=0;i<n;i++ {
    a[i],_ = strconv.Atoi(s[i])
  }
  return a
}

func main() {
  var nk,a []int
  var n,k,l,r int
  nk = NextIntArray()
  n,k = nk[0],nk[1]
  a = NextIntArray()
  for i:=0;i<n;i++ {
    if a[i] == 1 {
      r = i
      break
    }
  }
  l = r-k+1
  if l < 0 { l = 0 }
  if r > n-k { r = n-k }
  var s int = 1000000
  for j:=l;j<=r;j++ {
    t := ceil(j,k-1) + ceil(n-k-j,k-1) + 1
    if s > t { s = t }
  }
  fmt.Println(s)
}
func ceil(n int,m int) int {
  if n <= 0 { return 0 }
  var f float64 = float64(n)/float64(m)
  return int(math.Ceil(f))
}