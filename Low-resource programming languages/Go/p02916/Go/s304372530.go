package main

import "fmt"

func main() {
  var N, sum int
  fmt.Scan(&N)
  a := make([]int, N)
  b := make([]int, N)
  c := make([]int, N-1)
  for i := 0; i < N; i++ {
   	fmt.Scan(&a[i])
  }
  for i := 0; i < N; i++ {
  	fmt.Scan(&b[i])
  }
  for i := 0; i < N-1; i++ {
    fmt.Scan(&c[i])
  }

  for i := 0; i < N; i++ {
	sum += b[a[i]-1]
	if i < N-1 {
		if a[i] == a[i+1]-1 {
          sum += c[a[i]-1]
		}
	}
  }
  fmt.Println(sum)
}
