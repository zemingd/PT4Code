package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)
	ans := d/s

	if t >= ans{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}
