package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	h := make([]int, n)
	for i:=range h {
		fmt.Scan(&h[i])
	}
	g := make([]int, n-1)
	if n == 1 {
		fmt.Println(h[0])
		return
	}

	for i:=1;i<n;i++ {
		if h[i-1] <= h[i] {
			g[i-1] = 1
		} else {
			g[i-1] = -1
		}
	}
	var ans int
	if g[0] == -1 {
		ans = h[0]
	} else {
		ans = 0
	}
	for i:=1;i<n-1;i++ {
		if g[i-1] == -1 && g[i] == 1 {
			ans -=  h[i]
		} else if g[i-1] == 1 && g[i] == -1 {
			ans += h[i]
		}
	}
	if g[n-2] == 1 {
		ans += h[n-1]
	}

	fmt.Println(ans)
}