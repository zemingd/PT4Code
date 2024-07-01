package main

import(
	"fmt"
)

var N, Y int

func main() {
	x := -1
	y := -1
	z := -1
	fmt.Scan(&N, &Y)
	
	for i:=0; i<=N; i++ {
		for j:=0; j<=N; j++ {
			for k:=0; k<=(N-(i+j)); k++{
				if 10000*i+5000*j+1000*k == Y && i+j+k == N {
					x = i
					y = j
					z = k
				}
			}
		}
	}

	fmt.Println(x, y, z)
}