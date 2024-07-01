package main

import "fmt"

func main() {
	var (
		s string
		k int64
	)
	fmt.Scan(&s, &k)
	ls := int64(len(s))

	cnt := int64(0)
	for i := int64(0); i < ls; i++ {
		if i+1 < ls && s[i] == s[i+1] {
			cnt++
			i++
		}
	}

	if cnt == ls-1 {
		fmt.Println(ls * k / 2)
		return
	}

	if s[0] != s[ls-1] {
		fmt.Println(k * cnt)
		return
	}

	a := int64(1)
	for i := int64(1); i < ls; i++ {
		if s[i] != s[0] {
			break
		}
		a++
	}
	b := int64(1)
	for i := ls - 2; i >= 0; i-- {
		if s[i] != s[ls-1] {
			break
		}
		b++
	}
	cnt = 0
	for i := a; i < ls-b; i++ {
		if i+1 < ls-b && s[i] == s[i+1] {
			cnt++
			i++
		}
	}
	fmt.Println(k*cnt + (k-1)*((a+b)/2) + a/2 + b/2)
}
