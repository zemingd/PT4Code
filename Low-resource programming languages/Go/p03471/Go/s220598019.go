package main

import "fmt"

func main() {
	// Code for C - Otoshidama
	var N, Y int
	fmt.Scanf("%d %d", &N, &Y)

	var yen10000, count int
	var flag int = 0
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			yen10000 = Y - 1000*i - 5000*j
			count = yen10000 / 10000
			if yen10000%10000 == 0 && count+i+j == N && yen10000 >= 0 {
				fmt.Println(count, j, i)
				flag = 1
				break
			}
		}

		if flag == 1 {
			break
		}
	}

	if flag == 0 {
		fmt.Println("-1 -1 -1")
	}
}
