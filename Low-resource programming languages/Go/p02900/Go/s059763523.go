package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	ar := []int{}
	if min(a, b) == 1 {
		fmt.Println(1)
		return
	}
	for i := 1; i < min(a, b)/2+1; i++ {
		if a%i == 0 && b%i == 0 {
			ar = append(ar, i)
		}
	}
	fmt.Println(ar)
	ans := 1
	for i := 1; i < len(ar); i++ {
		found := false
		for j := 1; j < i; j++ {
			if ar[i]%ar[j] == 0 {
				found = true
				break
			}
		}
		if !found {
			ans++
		}
	}
	fmt.Println(ans)
}
