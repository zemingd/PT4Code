package main

import "fmt"

type op struct {
	rev, front bool
	c          byte
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
			fmt.Scanf("%d %c", &f, &ops[i].c)
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
	//F := make([]byte, 4*int(1e5)+10)
	//B := make([]byte, 4*int(1e5)+10)
	F := make([]byte, 2*Q+5)
	B := make([]byte, 2*Q+5)
	j, k := len(F)/2, len(B)/2
	for i := 0; i < Q; i++ {
		if !ops[i].rev { // 反転ではない(文字列追加)
			if ops[i].front {
				if sum[i]%2 == 1 {
					B[j] = ops[i].c
					j++
				} else {
					F[k] = ops[i].c
					k--
				}
			} else {
				if sum[i]%2 == 1 {
					F[k] = ops[i].c
					k--
				} else {
					B[j] = ops[i].c
					j++
				}
			}
		}
	}
	var FF []byte
	var BB []byte
	for i := 0; i < len(F); i++ {
		if F[i] > 0 {
			FF = append(FF, F[i])
		}
	}
	for i := 0; i < len(B); i++ {
		if B[i] > 0 {
			BB = append(BB, B[i])
		}
	}
	fmt.Println(string(FF) + S + string(BB))
}
