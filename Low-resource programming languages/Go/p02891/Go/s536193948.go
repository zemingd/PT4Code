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
		if i+1 < len(s) && s[i] == s[i+1] {
			cnt++
			i++
		}
	}

	if cnt == len(s)-1 {
		fmt.Println(len(s) * k / 2)
		return
	}

	if s[0] == s[len(s)-1] {
		if len(s) == 3 {
			fmt.Println(k - 1)
			return
		}

		a := 0
		for i := 1; i < len(s); i++ {
			if s[0] == s[i] {
				a++
				continue
			}
			break
		}
		b := 0
		for i := 0; i < len(s)-1; i++ {
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
