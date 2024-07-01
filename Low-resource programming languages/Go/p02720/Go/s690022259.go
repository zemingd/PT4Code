package main

import "fmt"

func main() {
	var K int
	fmt.Scan(&K)
	q := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	cnt := 0
	for {
		v := q[0]
		q = q[1:]
		cnt++
		if cnt == K {
			fmt.Println(v)
			return
		}
		r := v % 10
		switch {
		case r == 0:
			q = append(q, v*10, v*10+1)
		case 1 <= r && r <= 8:
			q = append(q, v*10+r-1, v*10+r, v*10+r+1)
		case r == 9:
			q = append(q, v*10+8, v*10+9)
		}
	}
}
