package main

import "fmt"

func main() {
	var K, sum int
	fmt.Scan(&K)
	w := make([][]int, K+1)
	for i := 0; i < len(w); i++ {
		w[i] = make([]int, K+1)
		for j := 0; j < len(w[i]); j++ {
			w[i][j] = gcd(i, j)
		}
	}
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				sum += w[w[a][b]][c]
			}
		}
	}
	fmt.Println(sum)
}
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
