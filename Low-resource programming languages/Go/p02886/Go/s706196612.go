package main

import "fmt"

func main() {

	var N int
	fmt.Scan(&N)

	d := make([]int,N)

	for i, _ := range d {
		fmt.Scan(&d[i])
	}
	count := N*(N-1)/2
	var ans int
	for j := 0; j < count; j++ {
		for i:=j+1;i < count; i++{
				ans += d[j] * d[i]
			}
	}
	fmt.Println(ans)

}
