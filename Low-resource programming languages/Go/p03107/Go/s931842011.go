package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)
	arr := make([]string, 0)
	count := 0
	for _, i := range str {
		s := string(i)
		if len(arr) == 0 {
			arr = append(arr, s)
		} else {
			tail := arr[len(arr) - 1]
			if tail != s {
				arr = arr[:len(arr) - 1]
				count += 2
			} else {
				arr = append(arr, s)
			}
		}
	}
	fmt.Println(count)
}