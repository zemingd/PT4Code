package main
import (
	"fmt"
	"math"
)


func main() {
  
  var N, K int
  fmt.Scanf("%d %d", &N, &K)
  
  n := float64(N % K)
  k := float64(K)
  
  var s []int
  
  for i:=0; i<10; i++ {
    n = math.Abs(n - k)
    if contains(s, int(n)) {
      break
    }
    s = append(s, int(n))
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

func contains(s []int, e int) bool {
  for _, v := range s {
  	if e == v {
  		return true
  	}
  }
  return false
}