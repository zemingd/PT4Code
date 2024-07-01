package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	ans := "No"
	for i:=1; i<10; i++{
		for j:=1; j<10; j++{
			if i * j == x{
				ans = "Yes"
				break
			}
		}
	}

	fmt.Println(ans)
}