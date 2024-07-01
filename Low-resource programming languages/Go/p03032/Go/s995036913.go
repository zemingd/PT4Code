package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
  "strconv"
  "strings"
)

func main() {
  input := Input{bufio.NewReaderSize(os.Stdin,1000000)}
  n,k := input.NextInts()
  v := input.NextIntArray()
  l := make([]int,n+1)
  for i:=0;i<n;i++ { l[i+1] = l[i]+v[i] }
  r := make([]int,n+1)
  for i:=n-1;i>-1;i-- { r[i] = r[i+1]+v[i] }
  m := 0
  for i:=1;i<k+1;i++ {
    for j:=0;j<i+1;j++ {
      if j > n-1 || n-(i-j) < 0 || j > n-(i-j) { continue }
      t := l[j]+r[n-(i-j)]
      var u []int
      for x:=0;x<j;x++ {
        if v[x] < 0 { u = append(u,v[x]) }
      }
      for y:=n-1;y>n-(i-j);y-- {
        if v[y] < 0 { u = append(u,v[y]) }
      }
      sort.Ints(u)
      for z:=min(len(u),k-i)-1;z>-1;z-- { t -= u[z] }
      if m < t { m = t }
    }
  }
  fmt.Println(m)
}
func min(n,m int) int {
  if n < m { return n }
  return m
}

type Input struct {
  reader *bufio.Reader
}
func(i *Input) NextLine() string {
  var buffer []byte
  for {
    line,isPrefix,err := i.reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer,line...)
    if !isPrefix { break }
  }
  return string(buffer)
}
func(i *Input) NextInts() (int,int) {
  s := strings.Split(i.NextLine()," ")
  x,_ := strconv.Atoi(s[0])
  y,_ := strconv.Atoi(s[1])
  return x,y
}
func(i *Input) NextIntArray() []int {
  s := strings.Split(i.NextLine()," ")
  a := make([]int,len(s))
  for i:=0;i<len(s);i++ { a[i],_ = strconv.Atoi(s[i]) }
  return a
}