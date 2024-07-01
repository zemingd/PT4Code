package main

import(
	"fmt"
)

func main() {
	var (
		fhy, hy, fy, sum, count int
	)
	fmt.Scan(&fhy, &hy, &fy, &sum)
	for i:= 0;i<fhy+1; i++{
		for j:= 0; j<hy+1; j++{
			for k:= 0; k< fy+1; k++ {
				if fhy*500+hy*100+fy*50 ==sum {
					count++
				}			
			}
		}
	}
	fmt.Println(count)
}