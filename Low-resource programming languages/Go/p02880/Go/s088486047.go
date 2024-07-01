package main

import "fmt"

func main() {


	var n int
	fmt.Scan(&n)


	f := true

	for i := 1; i < 10; i++ {
		if f {

			for j := 1; j < 10; j++ {
				if n == ( i * j) {
					fmt.Println("Yes")
					f = false
					break
				}
			}
		}
	}

	if (f) {
		fmt.Println("No")
	}

}