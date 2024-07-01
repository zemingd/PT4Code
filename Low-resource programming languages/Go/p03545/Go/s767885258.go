package main
import "fmt"

func main() {

  var n string
  fmt.Scan(&n)
  var digits = make([]int,0)
  for _,val := range n {
    digits = append(digits,int(val-'0'))
  }
  heap := createHeap(digits)
  i:= 8
  for i<17 {
    if heap[i] == 7 {
      break
    }
    i++
  }
  var ops = make([]string,3)
  for j := 2; j>= 0; j-- {
    if i % 2 == 1 {
      ops[j] = "-"
    } else {
      ops[j] = "+"
    }
    i /= 2
  }
  fmt.Printf("%d%s%d%s%d%s%d=7",digits[0],ops[0],digits[1],ops[1],digits[2],ops[2],digits[3])
}
func createHeap(digits []int) []int {
  var heap = make([]int,17)
  heap[1] = digits[0]
  heap[2] = heap[1] + digits[1]
  heap[3] = heap[1] - digits[1]
  dn := 2
  for i:= 4;i <= 16; i++ {
    if i > 7 {
      dn = 3
    }
    if i % 2 == 0{
      heap[i] = heap[i/2] + digits[dn]
    } else {
      heap[i] = heap[i/2] - digits[dn]
    }
  }
  return heap
}
