package main

import "fmt"

func checkContain(a int, arr [100]int) bool {
	for i := 0; i < 100; i++ {
		if arr[i] == a {
			return true
		}
	}
	return false
}

func main() {
	var x, n int
	var arr [100]int
	fmt.Scanf("%d %d \n", &x, &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &arr[i])
	}
	if n == 0 {
		fmt.Println(x)
	} else {
		var count = 0
		for true {
			if !checkContain(x-count, arr) {
				fmt.Println(x - count)
				break
			}
			if !checkContain(x+count, arr) {
				fmt.Println(x + count)
				break
			}
			count++
		}
	}
}
