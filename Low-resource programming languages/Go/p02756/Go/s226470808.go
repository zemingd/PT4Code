package main

import "fmt"

type input struct {
	q  int
	f1 int
	f2 string
}

func main() {
	var s string
	var qn int
	fmt.Scan(&s, &qn)

	var q, f1 int
	var f2 []byte
	var reverseCnt int
	top := make([]byte, 0, qn)
	bottom := make([]byte, 0, qn)

	for i := 0; i < qn; i++ {
		fmt.Scan(&q)
		if q == 1 {
			reverseCnt++
		}
		if q == 2 {
			fmt.Scan(&f1, &f2)
			if reverseCnt%2 == 0 {
				if f1 == 1 {
					top = append(f2, top...)
				}
				if f1 == 2 {
					bottom = append(bottom, f2...)
				}
			} else {
				if f1 == 1 {
					bottom = append(bottom, f2...)
				}
				if f1 == 2 {
					top = append(f2, top...)

				}
			}
		}
	}

	ans := append(top, []byte(s)...)
	ans = append(ans, bottom...)
	ansStr := string(ans)
	if reverseCnt%2 == 1 {
		ansStr = reverse(ansStr)
	}
	fmt.Println(ansStr)
}

func reverse(str string) string {
	rs := []rune(str)
	for i, j := 0, len(str)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
