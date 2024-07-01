package main

import "fmt"

func main() {
	var K, S int
	fmt.Scan(&K, &S)
	cnt := 0
	for i := 0; i <= K; i++ {
		for j := 0; j <= K; j++ {
			if k := S - i - j; 0 <= k && k <= K {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
