package main

import "fmt"

func main() {
	k, j := 0, 0
	fmt.Scanf("%d", &k)
	if k%2 == 0 {
		fmt.Println("-1")
		return
	}
	for i := 1; i < 10000000; i++ {
		j = j*10 + 7
		if j%k == 0 {
			fmt.Println(i)
			return
		}
		j = j % k

	}
	fmt.Println("-1")
}
