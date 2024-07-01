package main

import "fmt"


func main() {
	var n, k, d, tmp int
  	fmt.Scan(&n, &k)
  
    for i := 0; i < k; i++ {
      fmt.Scan(&d)
      a := map[int]int{}

      for j := 0; j < d; i++ {
        fmt.Scan(&tmp)
        _, err := a[tmp]
        if err {
        	a[tmp]++
        }else {
        	a[tmp] = 0
        }
      } 
    }
  fmt.Println(n - len(a))
}