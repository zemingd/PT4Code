package main
 
import (
	"fmt"
)
 
func main() {
	var N, M int
	fmt.Scan(&N, &M)
 
	var m [12][12]bool
	x, y := 0, 0
	for i := 0; i < M; i++ {
		fmt.Scan(&x, &y)
		m[x-1][y-1] = true
	}
 
	max := 0
	for bit := 0; bit < (1 << uint(N)); bit++ {
		ok := true
		for i := 0; i < N-1; i++ {
			if bit>>uint(i)&1 > 0 {
				for j := i + 1; j < N; j++ {
					if bit>>uint(j)&1 > 0 {
						if !m[i][j] {
							ok = false
						}
					}
				}
			}
		}
		if ok {
			cnt := 0
			for i := 0; i < N; i++ {
				if bit>>uint(i)&1 > 0 {
					cnt++
				}
			}
			if cnt > max {
				max = cnt
			}
		}
	}
 
	fmt.Println(max)
}