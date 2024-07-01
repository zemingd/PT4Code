package main

import "fmt"

func main() {
	var n int
	var d []int
	var count int

	fmt.Scan(&n)
	for i:=0; i<n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		d = append(d, tmp)
	}

	for j:=1; j<=100; j++{
		for i:=0; i<n; i++ {
			if d[i] == j {
				count += 1
				break
			}
		}
	}

	fmt.Println(count)
}