package main

import "fmt"

func Range(a, b, c int) string {
	if a < b && b < c {
		return "Yes"
	} else {
		return "No"
	}
}

func main(){
	a := 0
	b := 0
	c := 0
		fmt.Scan(&a)
		fmt.Scan(&b)
		fmt.Scan(&c)
	fmt.Println(Range(a, b, c))
}
