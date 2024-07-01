package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)

func main() {
  var n,k,l int = Next3Ints()
  initlz(n)
  for i:=0;i<k;i++ {
    var p,q int = Next2Ints()
    p,q = p-1,q-1
    unite(p,q)
  }
  var conn []int = make([]int,n)
  for i:=0;i<l;i++ {
    var r,s int = Next2Ints()
    r,s = r-1,s-1
    if same(r,s) {
      conn[r]++
      conn[s]++
    }
  }
  fmt.Print(conn[0]+1)
  for i:=1;i<n;i++ {
    fmt.Print(" ")
    fmt.Print(conn[i]+1)
  }
  fmt.Println()
}

var par,rank []int
func initlz(n int) {
  par = make([]int,n)
  rank = make([]int,n)
  for i:=0;i<n;i++ { par[i] = i }
}
func find(i int) int {
  if par[i] == i { return i }
  par[i] = find(par[i])
  return par[i]
}
func same(i,j int) bool {
  return find(i) == find(j)
}
func unite(i,j int) {
  i = find(i)
  j = find(j)
  if i == j { return }
  if rank[i] < rank[j] {
    par[i] = j
  } else {
    par[j] = i
    if rank[i] == rank[j] { rank[i]++ }
  }
}

var reader = bufio.NewReaderSize(os.Stdin,1000000)
func NextLine() string {
  var line,buffer []byte
  var isPrefix bool = true
  var err error
  for isPrefix {
    line,isPrefix,err = reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer,line...)
  }
  return string(buffer)
}
func Next2Ints() (int,int) {
  var x,y int
  var s []string = strings.Split(NextLine()," ")
  x,_ = strconv.Atoi(s[0])
  y,_ = strconv.Atoi(s[1])
  return x,y
}
func Next3Ints() (int,int,int) {
  var x,y,z int
  var s []string = strings.Split(NextLine()," ")
  x,_ = strconv.Atoi(s[0])
  y,_ = strconv.Atoi(s[1])
  z,_ = strconv.Atoi(s[2])
  return x,y,z
}