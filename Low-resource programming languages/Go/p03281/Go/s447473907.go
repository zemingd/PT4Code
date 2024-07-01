package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	ans := 0
	for i := 1; i <= N; i += 2 {
		if len(enumDiv(i)) == 7 {
			ans++
		}
	}
	fmt.Println(ans)
}

func enumDiv(x int) (ret []int) {
	ret = []int{}
	upperRet := []int{}
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			ret = append(ret, i)
			if i != 1 && i*i != x {
				upperRet = append(upperRet, x/i)
			}
		}
	}
	ret = append(ret, upperRet...)
	return
}
