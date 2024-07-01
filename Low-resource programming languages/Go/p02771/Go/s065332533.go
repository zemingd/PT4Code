package main

import "fmt"

func main() {
	var a[3] int
	fmt.Scan(&a[0],&a[1],&a[2])
	if((a[0] == a[1] && a[1] != a[2]) || (a[0] == a[2] && a[1] != a[2]) || (a[2] == a[1] && a[0] != a[2])) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}