package main

import "fmt"

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)
	res := make([]int, N)
	for i := 0; i < N; i++ {
		res[i] = -1
	}
	for i := 0; i < M; i++ {
		var s, c int
		fmt.Scanf("%d %d", &s, &c)
		if res[s-1] != -1 && c != res[s-1] {
			fmt.Println(-1)
			return
		}
		if i == 0 && c == 0 && N != 1 {
			fmt.Println(-1)
			return
		}
		res[s-1] = c
	}
	var ss string
	for i := 0; i < N; i++ {
		if i >= 1 && res[i] == -1 {
			ss += "0"
			continue
		}
		if i == 0 && res[i] == -1 && N != 1 {
			ss += "1"
			continue
		}
		if i == 0 && res[i] == -1 && N == 1 {
			ss += "0"
			continue
		}
		ss += fmt.Sprintf("%d", res[i])
	}
	fmt.Println(ss)

}
