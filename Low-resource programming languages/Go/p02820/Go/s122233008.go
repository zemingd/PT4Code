package main

import (
	"fmt"
)

func solution(n, k, r, s, p int, t string) int {
	var ans int
	stack := make([]rune, 0, n) // 出した手をすべて記録

	// r: グー
	// s: チョキ
	// p: パー
	for i, v := range t {
		var st rune
		if i-k >= 0 {
			st = stack[i-k]
		}
		if v == 'r' {
			if st != 'p' {
				ans += p
				stack = append(stack, 'p')
			} else if i+k <= n {
				// 先の手に影響あるので最善を選ぶ
				// パーができないのでチョキかグー
				if t[i+k] == 'p' {
					stack = append(stack, 'r')
				} else if t[i+k] == 'r' {
					stack = append(stack, 's')
				} else {
					stack = append(stack, 'r')
				}
			} else {
				// 先の手に影響ないのであいこにする
				stack = append(stack, 'r')
			}
		} else if v == 's' {
			if st != 'r' {
				ans += r
				stack = append(stack, 'r')
			} else if i+k <= n {
				// 先の手に影響あるので最善を選ぶ
				// グーができないのでチョキかパー
				if t[i+k] == 'r' {
					stack = append(stack, 's')
				} else if t[i+k] == 's' {
					stack = append(stack, 'p')
				} else {
					stack = append(stack, 's')
				}
			} else {
				// 先の手に影響ないのであいこにする
				stack = append(stack, 's')
			}
		} else if v == 'p' {
			if st != 's' {
				ans += s
				stack = append(stack, 's')
			} else if i+k <= n {
				// 先の手に影響あるので最善を選ぶ
				// チョキができないのでグーかパー
				if t[i+k] == 's' {
					stack = append(stack, 'p')
				} else if t[i+k] == 'r' {
					stack = append(stack, 's')
				} else {
					stack = append(stack, 'p')
				}
			} else {
				// 先の手に影響ないのであいこにする
				stack = append(stack, 'p')

			}
		}
	}
	return ans
}

func main() {
	var n, k, r, s, p int
	var t string
	fmt.Scan(&n, &k)
	fmt.Scan(&r, &s, &p)
	fmt.Scan(&t)
	fmt.Println(solution(n, k, r, s, p, t))
}
