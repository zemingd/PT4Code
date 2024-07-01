package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	array := []string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	for i := 0; i < 7; i++ {
		if array[i] == s {
			fmt.Println(7-i)
		}
	}
}
