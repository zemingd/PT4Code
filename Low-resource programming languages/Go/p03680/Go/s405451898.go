package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d\n", &a[i])
	}

	key, count := 1, 0
	buttons := map[int]bool{key: true}
	for {
		count++
		key = a[key-1]
		if buttons[key] {
			fmt.Println(-1)
			break
		} else if key == 2 {
			fmt.Println(count)
			break
		} else {
			buttons[key] = true
		}
	}

}
