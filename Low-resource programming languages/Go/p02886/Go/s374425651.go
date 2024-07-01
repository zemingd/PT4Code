package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var takoyakis []int
	var takoyaki int
	for i := 0; i < n; i++ {
		fmt.Scan(&takoyaki)
		takoyakis = append(takoyakis, takoyaki)
	}
	result := 0
	for index, x := range takoyakis {
		for _, y := range takoyakis[index+1:] {
			result += x * y
		}
	}
	fmt.Println(result)
}
