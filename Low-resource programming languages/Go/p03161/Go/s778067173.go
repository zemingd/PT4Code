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
  var n,k int
  var s []string = strings.Split(NextLine()," ")
  n,_ = strconv.Atoi(s[0])
  k,_ = strconv.Atoi(s[1])
  return n,k
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
  var n,k int = NextInts()
  var h []int = NextIntArray()
  var c []int = make([]int,n)
  var m int
  c[0] = 0
  c[1] = abs(h[1]-h[0])
  if k >= n {
    for i:=2;i<n;i++ {
      m = 10000000
      for j:=0;j<i;j++ {
        m = min(m,c[j]+abs(h[i]-h[j]))
      }
      c[i] = m
    }
  } else {
    for i:=2;i<k;i++ {
      m = 10000000
      for j:=0;j<i;j++ {
        m = min(m,c[j]+abs(h[i]-h[j]))
      }
      c[i] = m
    }
    for i:=k;i<n;i++ {
      m = 10000000
      for j:=i-k;j<i;j++ {
        m = min(m,c[j]+abs(h[i]-h[j]))
      }
      c[i] = m
    }
  }
  fmt.Println(c[n-1])
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}
func min(n int,m int) int {
  if n < m { return n }
  return m
}