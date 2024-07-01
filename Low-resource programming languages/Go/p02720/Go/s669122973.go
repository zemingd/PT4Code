package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	q := make([]int64, 0, 100000)
	for i := 1; i < 10; i++ {
		q = append(q, int64(i))
	}

	i := 0
	for i < len(q) {
		if i+1 == k {
			break
		}
		x := q[i]
		i++
		m := x % 10
		n := x * 10
		if m != 0 {
			q = append(q, n+m-1)
		}
		q = append(q, n+m)
		if x%10 != 9 {
			q = append(q, n+m+1)
		}
	}
	fmt.Println(q[i])
}
