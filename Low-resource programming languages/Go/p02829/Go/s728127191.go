package main

import "fmt"

func main() {
	var a,b int
	fmt.Scan(&a,&b)
	cs := []int{1,2,3}
	for _,v := range cs {
		if v == a || v == b {
			continue
		}
		fmt.Println(v)
	}
}
