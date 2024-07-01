package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)

func main() {
  input := Input{bufio.NewReaderSize(os.Stdin,100000)}
  h,w := input.NextInts()
  var g [2002][2002]int
  for j:=0;j<w+2;j++ { g[0][j],g[h+1][j] = -1,-1 }
  for i:=1;i<h+1;i++ {
    s := input.NextLine()
    g[i][0],g[i][w+1] = -1,-1
    for j:=1;j<w+1;j++ {
      if s[j-1:j] == "#" { g[i][j] = -1 }
    }
  }
  for i:=1;i<h+1;i++ {
    l := 0
    for j:=1;j<w+2;j++ {
      if g[i][j] != -1 { continue }
      for k:=l+1;k<j;k++ { g[i][k] = j-l-1 }
      l = j
    }
  }
  for j:=1;j<w+1;j++ {
    u := 0
    for i:=1;i<h+2;i++ {
      if g[i][j] != -1 { continue }
      for k:=u+1;k<i;k++ { g[k][j] += i-u-2 }
      u = i
    }
  }
  m := -1
  for i:=1;i<h+1;i++ {
    for j:=1;j<w+1;j++ {
      if m < g[i][j] { m = g[i][j] }
    }
  }
  fmt.Println(m)
}

type Input struct { reader *bufio.Reader }
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