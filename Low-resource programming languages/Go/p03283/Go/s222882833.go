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

	m := make([]int,q)

	for i := 0; i < q; i++ {
		count := 0
		fmt.Scanf("%d %d\n", &a, &b)
		for _, x := range s {
			if ((a <= x[0]) && (a >= 1)) && ((b <= n) && (b >= x[1])) {
				count++
			}
		}
		m[i]=count
	}

	for _,i:= range m {
		fmt.Println(i)
	}
}

