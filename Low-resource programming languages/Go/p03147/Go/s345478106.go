package main
import . "fmt"
func main() {
  var n int
  var h []int
  Scan(&n)
  h = make([]int,n)
  for i:=0;i<n;i++ { Scanf("%d",&h[i]) }
  Println(watering(h))
}
func watering(h []int) int {
  var n int = len(h)
  if n == 0 { return 0 }
  if n == 1 { return h[0] }
  if max(h) == 0 { return 0 }
  var m int = min(h)
  for i:=0;i<n;i++ { h[i] -= m }
  var k int = 0
  for i:=0;i<n;i++ {
    if h[i] != 0 {
      k = i
      break
    }
  }
  for i:=1;i<n;i++ {
    if h[i] == 0 {
      m += watering(h[k:i])
      i++
      k = i
    }
  }
  m += watering(h[k:n])
  return m
}
func min(a []int) int {
  var m int = a[0]
  for i:=1;i<len(a);i++ {
    if m > a[i] { m = a[i] }
  }
  return m
}
func max(a []int) int {
  var m int = a[0]
  for i:=1;i<len(a);i++ {
    if m < a[i] { m = a[i] }
  }
  return m
}