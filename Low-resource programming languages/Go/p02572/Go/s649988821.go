package main

import (
	"fmt"
  	"sort"
)

func main() {
	var n, tmp int
    var a []int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
      	a = append(a, tmp)
	}
  	sort.SliceStable(a, func(i, j int) bool { return a[i] < a[j] })
  	memo := 0
  	sum := 0
    tmp = 0
	for i := n-1; i >= 0; i-- {
        if i > 1 && a[i] == a[i-1] {
            sum = sum + (memo * a[i]) % 1000000007
          	tmp = (tmp + a[i]) % 1000000007
        } else {
            sum = sum + (memo * a[i]) % 1000000007
          	memo = (memo + a[i] + tmp)% 1000000007
            tmp = 0
        }
    }
	
  	ans := sum % 1000000007
	fmt.Printf("%d\n", ans)
}
