package main

import (
	"fmt"
)

func main() {
	L := [6]int{}
	for i := 0; i < 6; i++ {
		fmt.Scan(&L[i])
	}

	W := make([]int, 0)
	for i := 0; i <= 30; i++ {
		for j := 0; j <= 30; j++ {
			w := (L[0]*i + L[1]*j) * 100
			if w == 0 {
				continue
			}
			if w > L[5] {
				break
			}
			W = append(W, w)
		}
	}

	S := make([]int, 0)
	for i := 0; i <= 3000; i++ {
		for j := 0; j <= 3000; j++ {
			s := L[2]*i + L[3]*j
			if s > L[5] {
				break
			}
			S = append(S, s)
		}
	}

	d := 0.0
	ans1, ans2 := W[0], 0
	for _, a := range W {
		for _, b := range S {
			if (a+b) > L[5] || b*100 > L[4]*a {
				continue
			}
			tmp := float64(100*b) / float64(a+b)
			if tmp > d {
				d = tmp
				ans1, ans2 = a+b, b
			}
		}
	}

	fmt.Println(ans1, ans2)
}
