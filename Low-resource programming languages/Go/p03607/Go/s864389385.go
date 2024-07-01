package main

import "fmt"

func main() {
	var n, a int
	fmt.Scanf("%d\n", &n)

	dic := map[int]int{}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d\n", &a)
		dic[a]++
	}

	total := 0
	for key := range dic {
		if dic[key]%2 == 1 {
			total++
		}
	}

	fmt.Println(total)

}
