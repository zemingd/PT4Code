package main

import "fmt"

var (
	n, m, q, a, b int
)

func main() {
	fmt.Scanf("%d %d %d\n", &n, &m, &q)
	s := make([][2]int,m)
	for i := 0; i < m; i++ {
		fmt.Scanf("%d %d\n", &s[i][0], &s[i][1])
	}

	for i := 0; i < q; i++ {
		count := 0
		fmt.Scanf("%d %d\n", &a, &b)
		for _, i := range s {
			if ((a <= i[0]) && (a >= 1)) && ((b <= n) && (b >= i[1])) {
				count++
			}
		}
		fmt.Println(count)
	}
}


