package main

import (
	// "bufio"
	"fmt"
	// "os"
	// "sort"
)

func min(a,b int)int{
	if(a>b){
		return b
	}
	return a
}

func max(a,b int)int{
	if(a>b){
		return a
	}
	return b
}
func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	// STDOUT MUST BE FLUSHED MANUALLY!!!
	var k, n int
		fmt.Scan(&k, &n)
	 
		arr := make([]int, n)
		for i := range arr {
			fmt.Scan(&arr[i])
		}
	var dist int;
	dist = k - arr[n-1] + arr[0]
	for i := 0; i < n-1; i++ {
		// 家間での距離を測り、最大のものを保持する
		dist = max(dist, arr[i+1] - arr[i])
	}
	fmt.Println(k-dist);
}

// package main
 
// import (
// 	"fmt"
// )
 
// func main() {
// 	var k, n int
// 	fmt.Scan(&k, &n)
 
// 	a := make([]int, n)
// 	for i := range a {
// 		fmt.Scan(&a[i])
// 	}
 
// 	base := k - a[n-1] + a[0]
// 	for i := 0; i < n-1; i++ {
// 		// 家間での距離を測り、最大のものを保持する
// 		base = max(base, a[i+1] - a[i])
// 	}
// 	// 家間の距離が最大の区間を除いた距離が最短
// 	fmt.Println(k - base)
// }
 
// func max(a, b int) int {
// 	if a > b {
// 		return a
// 	}
// 	return b
// }
