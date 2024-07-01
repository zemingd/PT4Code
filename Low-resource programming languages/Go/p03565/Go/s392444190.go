package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	if len(t) > len(s) {
		fmt.Println("UNRESTORABLE")
		return
	}

	ans := make([]rune, len(s))
	j := 0
	for i := range s {
		if j == len(t) {
			if s[i] == '?' {
				ans[i] = 'a'
			} else {
				ans[i] = rune(s[i])
			}
			continue
		}

		if s[i] == '?' {
			ans[i] = 'a'
		} else if s[i] == t[j] {
			ans[i] = rune(s[i])
		} else {
			ans[i] = rune(s[i])
			j = 0
			continue
		}

		j++
		if j == len(t) {
			for k := 0; k < j; k++ {
				ans[i-j+k+1] = rune(t[k])
			}
		}
	}

	if j == len(t) {
		fmt.Println(string(ans))
	} else {
		fmt.Println("UNRESTORABLE")
	}
}
