package main

import "fmt"

type op struct {
	rev, front bool
	c          string
}

func rev(s string) string {
	r := make([]byte, len(s))
	i, j := len(s)-1, 0
	for i >= 0 {
		r[j] = s[i]
		j++
		i--
	}
	return string(r)
}

func main() {
	var S string
	fmt.Scan(&S)
	var Q int
	fmt.Scan(&Q)
	ops := make([]op, Q)
	for i := 0; i < Q; i++ {
		var q int
		fmt.Scan(&q)
		if q == 1 {
			ops[i].rev = true
		} else {
			var f int
			fmt.Scan(&f, &ops[i].c)
			if f == 1 {
				ops[i].front = true
			}
		}
	}
	sum := make([]int, Q+1)
	for i := Q - 1; i >= 1; i-- {
		if ops[i].rev {
			sum[i-1] = sum[i] + 1
		} else {
			sum[i-1] = sum[i]
		}
	}
	// fmt.Println("S", S, "Q", Q, "ops", ops, "sum", sum)
	if sum[0]%2 == 1 {
		S = rev(S)
	}
	F := ""
	B := ""
	for i := 0; i < Q; i++ {
		if !ops[i].rev { // 反転ではない(文字列追加)
			if ops[i].front {
				if sum[i]%2 == 1 {
					B += ops[i].c
				} else {
					F = ops[i].c + F
				}
			} else {
				if sum[i]%2 == 1 {
					F = ops[i].c + F
				} else {
					B += ops[i].c
				}
			}
		}
	}
	fmt.Println(F + S + B)
}
