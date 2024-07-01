package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	if n == 1 {
		fmt.Println(1)
	}else if n >= 2 && n < 4{
		fmt.Println(2)
	}else if n >= 4 && n < 8{
		fmt.Println(4)
	}else if n >= 8 && n < 16{
		fmt.Println(8)
	}else if n >= 16 && n < 32{
		fmt.Println(16)
	}else if n >= 32 && n < 64{
		fmt.Println(32)
	}else if n >= 64 && n <= 100{
		fmt.Println(64)
	}
}