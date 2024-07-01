package main

import (
	"fmt"
)

func main() {
	var n, k, r, s, p int
	fmt.Scan(&n, &k)
	fmt.Scan(&r, &s, &p)
	var t string
	fmt.Scan(&t)

	var mp map[string]int

	mp["s"] = r
	mp["p"] = s
	mp["r"] = p
	mp["m"] = 0


	m := (n-1)/k + 1
	ans := 0
	for i:=0; i<m; i++{
		for j:=0; j < k; j++ {
			if i*k+j > len(t) {
				return
			}

			if i!=0 {
				if t[i*k+j] == t[(i-1)*k+j]{
					t[i*k+j] = 'm'
				}
			}

			ans += mp[t[i*k+j]]
		}
	}

	fmt.Printf("%d", ans)
}