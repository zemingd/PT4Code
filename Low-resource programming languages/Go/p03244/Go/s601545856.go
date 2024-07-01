package main
import (
  "fmt"
  "sort"
)
func main() {
  var n,a int
  fmt.Scan(&n)
  e := map[int]int{}
  o := map[int]int{}
  for i:=0;i<n;i++ {
    fmt.Scan(&a)
    if i%2 == 0 { e[a]++;continue }
    o[a]++
  }
  ee := Entries{Entry{0,0}}
  for k,v := range e { ee = append(ee,Entry{k,v}) }
  sort.Sort(sort.Reverse(ee))
  eo := Entries{Entry{0,0}}
  for k,v := range o { eo = append(eo,Entry{k,v}) }
  sort.Sort(sort.Reverse(eo))
  if ee[0].k != eo[0].k { fmt.Println(n-ee[0].v-eo[0].v);return }
  fmt.Println(n-max(ee[0].v+eo[1].v,ee[1].v+eo[0].v))
}
func max(x,y int) int {
  if x > y { return x }
  return y
}
type Entry struct { k,v int }
type Entries []Entry
func(e Entries) Len() int { return len(e) }
func(e Entries) Swap(i,j int) { e[i],e[j] = e[j],e[i] }
func(e Entries) Less(i,j int) bool { return e[i].v < e[j].v }