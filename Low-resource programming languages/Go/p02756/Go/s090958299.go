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
		} else {
			fmt.Scan(&f1, &f2)
			if (reverseCnt%2 == 0 && f1 == 1) || (reverseCnt%2 == 1 && f1 == 2) {
				top = append(f2, top...)
			} else {
				bottom = append(bottom, f2...)
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
