package main

import "fmt"

func main() {
	var N, K int
	fmt.Scanf("%d %d\n", &N, &K)
	var R, S, P int
	fmt.Scanf("%d %d %d\n", &R, &S, &P)
	var TS string
	fmt.Scan(&TS)
	T := []rune(TS)

	p := 0
	m := map[int]bool{}
	for i := 0; i < N; i++ {
		t := string(T[i])
		if i+1 <= K {
			if string(t) == "r" {
				p += P
			} else if string(t) == "s" {
				p += R
			} else if string(t) == "p" {
				p += S
			}
			continue
		}
		tk := string(T[i-K])
		if t == tk && !m[i-K] {
			m[i] = true
			continue
		}
		if string(t) == "r" {
			p += P
		} else if string(t) == "s" {
			p += R
		} else if string(t) == "p" {
			p += S
		}
	}
	fmt.Println(p)
}
