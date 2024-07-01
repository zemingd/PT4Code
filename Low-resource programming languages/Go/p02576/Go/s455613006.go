package main

import "fmt"

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)
	if n % x == 0{
		fmt.Println((n/x)*t )
	}else{
		fmt.Println(((n/x)+1)*t )
	}
}