package main

import "fmt"

func main() {
	var N, K, R, S, P, ans int
	fmt.Scan(&N, &K, &R, &S, &P)
	var T string
	fmt.Scan(&T)
	h := make([]byte, N)
	for i := 0; i < N; i++ {
		win := false
		if i < K { // 勝てる手を出す
			win = true
			if T[i] == 'r' {
				h[i] = 'p'
			} else if T[i] == 's' {
				h[i] = 'r'
			} else { // T[i] == 'p'
				h[i] = 's'
			}
		} else { // K回前と同じ手は出せない
			// h[i] = '?'
			if T[i] == 'r' {
				if h[i-K] != 'p' {
					h[i] = 'p'
					win = true
				}
			} else if T[i] == 's' {
				if h[i-K] != 'r' {
					h[i] = 'r'
					win = true
				}
			} else { // T[i] == 'p'
				if h[i-K] != 's' {
					h[i] = 's'
					win = true
				}
			}
		}
		if win {
			if h[i] == 'p' {
				ans += P
			} else if h[i] == 's' {
				ans += S
			} else {
				ans += R
			}
		} else {
			// このターンでは勝てないので、K回後の邪魔にならない手を出す
			if i+K < N {
				if T[i] == 'r' {
					// 今回自分が選べる手は 'r' or 's'
					if T[i+K] == 's' {
						h[i] = 's'
					} else {
						h[i] = 'r'
					}
				} else if T[i] == 's' {
					// 今回自分が選べる手は 'p' or 's'
					if T[i+K] == 'p' {
						h[i] = 'p'
					} else {
						h[i] = 's'
					}
				} else { // T[i] == 'p'
					// 今回自分が選べる手は 'r' or 'p'
					if T[i+K] == 'r' {
						h[i] = 'r'
					} else {
						h[i] = 'p'
					}
				}
			}
		}
	}
	// fmt.Println("my hands", string(h))
	fmt.Println(ans)
}
