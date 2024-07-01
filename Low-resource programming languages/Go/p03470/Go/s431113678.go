package main

import "fmt"

func KagamiMochi(N int, d []int) int{
	check := make(map[int]bool)
	for i := 0; i < N; i++ {
		if _, ok := check[d[i]]; !ok{
			check[d[i]] = true
		}
	}
	return len(check)
}

func main() {
	var N, num int
	d := []int{}
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		fmt.Scan(&num)
		d = append(d, num)
	}
	mochi := KagamiMochi(N, d)
	fmt.Println(mochi)
}