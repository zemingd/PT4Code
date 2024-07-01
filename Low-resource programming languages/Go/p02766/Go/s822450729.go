package main

import "fmt"

func main() {
	var n, k, ans int
	fmt.Scan(&n, &k)
	for cn := n; ; {
		ans++
		cn = cn / k
		if cn == 0 {
			break
		}
	}
	fmt.Println(ans)
}
