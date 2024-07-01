package main

import "fmt"

func main() {
	var n, a, b, count int

	fmt.Scan(&n, &a, &b)

	if a == 0{
		count = 0
	}

	if a + b >= n{
		count = a
	}else if a + b < n{
		if n % (a+b) >= a{
			count = n / (a+b) + a
		}else{
			count = n / (a+b) + n % (a+b)
		}
	}

	fmt.Print(count)
}