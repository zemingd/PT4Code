package main

import (
	"fmt"
)

func main() {
	var n, tmp int
    var a []int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
      	a = append(a, tmp)
	}
  	memo := 0
  	sum := 0
	for i := 0; i < n; i++ {
      sum = sum + (memo * a[i]) % 1000000007
      memo = (memo + a[i])% 1000000007
    }
	
  	ans := sum % 1000000007
	fmt.Printf("%d\n", ans)
}
