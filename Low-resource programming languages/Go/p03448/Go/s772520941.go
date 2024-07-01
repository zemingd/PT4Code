package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)
	count := 0
	for i:=0; i <= a; i++{
		for l:=0;l<=b;l++{
			for m:=0;m<=c;m++{
				if 500*i + 100*l + 50*m == x{
					count++
				}
			}
		}
	}
	fmt.Println(count)
}