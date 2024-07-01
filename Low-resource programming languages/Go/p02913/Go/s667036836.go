package main

import "fmt"

type KMP struct {
	w string
	t []int
}

func NewKMP(w string) *KMP {
	t := make([]int, len(w)+1)
	t[0] = -1
	i, j := 1, 0
	for i < len(w) {
		if w[i] == w[j] {
			t[i] = t[j]
		} else {
			t[i] = j
			j = t[j]
			for j >= 0 && w[i] != w[j] {
				j = t[j]
			}
		}
		i++
		j++
	}
	t[i] = j
	return &KMP{w, t}
}

func (k *KMP) Search(s string) bool {
	var i, j int
	for j < len(s) {
		if k.w[i] == s[j] {
			i++
			j++
			if i == len(k.w) {
				return true
			}
		} else {
			i = k.t[i]
			if i < 0 {
				i++
				j++
			}
		}
	}
	return false
}

func KMPSearch(s, w string) bool {
	return NewKMP(w).Search(s)
}

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	var ans int

	for i := n / 2; i > 0; i-- {
		for j := 0; j <= n-2*i; j++ {
			if KMPSearch(s[i+j:], s[j:i]) {
				ans = i
				break
			}
		}
		if ans > 0 {
			break
		}
	}
	fmt.Println(ans)
}
