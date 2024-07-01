package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	f := make([]bool, 26)
	for _, c := range s {
		f[c-97] = true
	}
	for i, e := range f {
		if !e {
			fmt.Println(string(i + 97))
			return
		}
	}
	fmt.Println("None")
	return
}
