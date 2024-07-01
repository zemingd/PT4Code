package main

import "fmt"

func main() {
	var n int
	var flag bool
	fmt.Scanf("%d", &n)
	flag = false

	if n == 0 {
		flag = false
	} else if 0 == (n/100)%7 {
		flag = true
	} else if 0 == ((n%100)/10)%7 {
		flag = true
	} else if 0 == (n%10)%7 {
		flag = true
	}

	if flag {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}
}
