package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	arr := make([]int, n)
	for i := 0; i < n - 1; i++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		if w % 2 != 0 {
			if arr[u - 1] != 0 && arr[v - 1] != 0 {
				if arr[u - 1] == arr[v - 1] {
					if arr[u - 1] == 1 {
						arr[v - 1] = 2
					} else {
						arr[v - 1] = 1
					}
				}
			} else if arr[u - 1] != 0 {
				if arr[u - 1] == 1 {
					arr[v - 1] = 2
				} else {
					arr[v - 1] = 1
				}
			} else if arr[v - 1] != 0 {
				if arr[v - 1] == 1 {
					arr[u - 1] = 2
				} else {
					arr[u - 1] = 1
				}
			} else {
				arr[u - 1] = 2
				arr[v - 1] = 1
			}
		} else {
			if arr[u - 1] == 0 {
				arr[u - 1] = 1
			}
			if arr[v - 1] == 0 {
				arr[v - 1] = 1
			}
		}
	}
	for _, i := range arr {
		if i == 2 {
			fmt.Println(0)
		} else {
			fmt.Println(i)
		}
	}
}