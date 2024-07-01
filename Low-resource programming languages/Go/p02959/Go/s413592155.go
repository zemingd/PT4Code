package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n+1)
	br := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	for i := range br {
		fmt.Scan(&br[i])
	}
	ans := 0
	for i := 0; i < n; i++ {
		if ar[i] >= br[i] {
			ans += br[i]
			ar[i] -= br[i]
			br[i] = 0
		} else {
			ans += ar[i]
			br[i] -= ar[i]
			ar[i] = 0
		}
		if ar[i+1] >= br[i] {
			ans += br[i]
			ar[i+1] -= br[i]
			br[i] = 0
		} else {
			ans += ar[i+1]
			br[i] -= ar[i+1]
			ar[i+1] = 0
		}
	}
	fmt.Println(ans)
}
