package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	s = reverse(s)

	var t string
	strs := []string{"maerd", "remaerd", "esare", "resare"}

	start := 0
	for len(t) < len(s) {
		flag := false
		for i := 0; i < len(strs); i++ {
			if len(s) < start+len(strs[i]) {
				continue
			}
			if s[start:start+len(strs[i])] == strs[i] {
				t = t + strs[i]
				start += len(strs[i])
				flag = true
			}
		}
		if !flag {
			break
		}
	}

	if t == s {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
