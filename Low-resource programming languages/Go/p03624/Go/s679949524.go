package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)

	for i := 'a'; i <= 'z'; i++ {
		has := false
		for _, v := range S {
			if v == i {
				has = true
				continue
			}
		}
		if !has {
			fmt.Println(string(i))
			return
		}
	}

	fmt.Println("None")
}
