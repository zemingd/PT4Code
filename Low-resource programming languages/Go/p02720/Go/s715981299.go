package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k int
	fmt.Scan(&k)
	qs := make([]int, 0)
	qs = append(qs, []int{1, 2, 3, 4, 5, 6, 7, 8, 9}...)
	var cnt int
	for len(qs) > 0 {
		cnt++
		q := qs[0]
		qs = qs[1:]
		if cnt == k {
			fmt.Println(q)
			break
		}
		bs := []byte(strconv.Itoa(q))
		last := bs[len(bs)-1]
		if last == '0' {
			qs = append(qs, q*10+0)
			qs = append(qs, q*10+1)
		} else if last == '9' {
			qs = append(qs, q*10+8)
			qs = append(qs, q*10+9)
		} else {
			ln, _ := strconv.Atoi(string([]byte{last}))
			qs = append(qs, q*10+ln-1)
			qs = append(qs, q*10+ln)
			qs = append(qs, q*10+ln+1)
		}
	}
}
