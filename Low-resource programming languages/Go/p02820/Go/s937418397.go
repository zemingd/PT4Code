package main

import "fmt"

func main() {
	var n, k, r, s, p int
	var t string
	fmt.Scan(&n, &k, &r, &s, &p, &t)

	v := map[byte]int{
		'r': p,
		's': r,
		'p': s,
	}

	tt := make(map[int]bool)
	ans := 0
	for i := 0; i < n; i++ {
		if i-k < 0 {
			ans += v[t[i]]
			continue
		}

		if t[i-k] == t[i] {
			if tt[i-k] {
				ans += v[t[i]]
			} else {
				tt[i] = true
			}
			continue
		}
		ans += v[t[i]]
	}
	fmt.Println(ans)
}
