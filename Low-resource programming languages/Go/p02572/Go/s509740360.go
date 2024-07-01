package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &slice[i])
	}

	total := 0
	for i := n - 1; i >= 1; i-- {
		tmp := 0
		for j := n; j > i; j-- {
			tmp += slice[j-1]
			tmp = tmp % (1000000000 + 7)
		}
		tmp = (tmp * slice[i-1]) % (1000000000 + 7)
		total += tmp
		total = total % (1000000000 + 7)
	}

	fmt.Println(total)

}
