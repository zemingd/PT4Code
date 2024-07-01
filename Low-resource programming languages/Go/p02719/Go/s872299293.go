package main
import (
	"fmt"
	"math"
)


func main() {
  
  var N, K uint64
  fmt.Scanf("%d %d", &N, &K)
  
  n := float64(N % K)
  fmt.Println(n)
  k := float64(K)
  
  var s []uint64
  
  s = append(s, N)
  fmt.Println(s)

  for {
    fmt.Println(n,k)
    n = math.Abs(float64(uint64(n) - uint64(k)))
    if contains(s, uint64(n)) {
      break
    }
    s = append(s, uint64(n))
    fmt.Println(s)
  }

  ans := N
  for _, num := range s {
    if ans > num {
      ans = num
    }
  }
  fmt.Println(ans)
  
  //s := make([]int, N)  
  //for i:=0; i<N; i++ {
  //  var a int
  //  fmt.Scanf("%d", &a)
  //  s[i] = a
  //}

  //sum := 0
  //for _, num := range s {
  //    sum += num
  //}
  //sumsum := float32(sum) / (4.0 * float32(M))
  
  //vv := make([]int,N, N)
  //for i:=0; i<N; i++ {
  //  if float32(s[i]) >= sumsum {vv[i] = 1} else {vv[i] = 0}
  //}

  //if sumsumsum >= M{
  //  fmt.Println("Yes")
  //} else {
  //  fmt.Println("No")
  //}
}

func contains(s []uint64, e uint64) bool {
  for _, v := range s {
  	if e == v {
  		return true
  	}
  }
  return false
}