package main

import "fmt"

func main(){
	var n,m,a,b,x int
	fmt.Scan(&n,&m)
	ans := make([]bool, n+1)
	h := make([]int,n+1)
	for i:=1 ; i<=n; i++ {
		fmt.Scan(&h[i])
		ans[i] = true
	}
	for i:=0 ; i<m ; i++ {
		fmt.Scan(&a,&b)
		if h[a] <= h[b] {
			ans[a] = false
		}
		if h[a] >= h[b] {
			ans[b] = false
		}
	}
	for i:=1 ; i<=n ; i++ {
		if ans[i] {
			x++
		}
	}
	fmt.Println(x)
}
