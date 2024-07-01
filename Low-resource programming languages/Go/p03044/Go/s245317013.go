package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)

var tree map[int]map[int]int64
var color []int

func main() {
  var n int = NextInt()
  tree = make(map[int]map[int]int64)
  color = make([]int,n)
  for i:=0;i<n;i++ {
    tree[i] = map[int]int64{}
    color[i] = -1
  }
  for i:=0;i<n-1;i++ {
    var u,v,w int = NextInts()
    tree[u-1][v-1] = int64(w)
    tree[v-1][u-1] = int64(w)
  }
  dfs(0,-1,0)
  for i:=0;i<n;i++ { fmt.Println(color[i]) }
}

func dfs(v,p int,d int64) {
  color[v] = int(d%2)
  for u,w := range tree[v] {
    if u == p { continue }
    dfs(u,v,d+w)
  }
}

var reader = bufio.NewReaderSize(os.Stdin,1000000)
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
  var x int
  x,_ = strconv.Atoi(NextLine())
  return x
}
func NextInts() (int,int,int) {
  var x,y,z int
  var s []string = strings.Split(NextLine()," ")
  x,_ = strconv.Atoi(s[0])
  y,_ = strconv.Atoi(s[1])
  z,_ = strconv.Atoi(s[2])
  return x,y,z
}