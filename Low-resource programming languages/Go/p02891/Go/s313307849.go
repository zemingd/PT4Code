package main

import "fmt"

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)

	cnt := 0
	for i := 0; i < len(s); i++ {
		if i+1 < len(s) && s[i] == s[i+1] || i-1 >= 0 && i+1 < len(s) && s[i-1] == s[i+1] {
			cnt++
			i++
		}
	}

	if cnt == len(s)-1 {
		fmt.Println(len(s) * k / 2)
		return
	}

	if s[0] == s[len(s)-1] {
		a := 1
		for i := 1; i < len(s); i++ {
			if s[0] == s[i] {
				a++
				continue
			}
			break
		}
		b := 1
		for i := len(s) - 2; i >= 0; i-- {
			if s[len(s)-1] == s[i] {
				b++
				continue
			}
			break
		}
		fmt.Println(k*cnt - (a/2+b/2-(a+b)/2)*(k-1))
		return
	}

	fmt.Println(k * cnt)
}
