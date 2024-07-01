package main

import "fmt"

func main() {
	var n, y int
	flg := false
	fmt.Scanf("%d %d", &n, &y)
	for i := 0; i <= n; i++ {
		for j := 0; j+i <= n; j++ {
			total := 10000*i + 5000*j + 1000*(n-j-i)
			if total == y {
				fmt.Println(i, j, n-i-j)
				flg = true
				break
			}
		}
		if flg {
			break
		}

	}

	if !flg {
		fmt.Println(-1, -1, -1)
	}

}
