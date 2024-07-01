package main

import "fmt"

func main() {
	var n int
	var a []int
	var ans int
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		tmp := 0
		fmt.Scanf("%d", &tmp)
		a = append(a, tmp)
	}
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			ans = (ans + a[i]*a[j]%1000000007) % 1000000007
		}
	}
	fmt.Println(ans)
}
