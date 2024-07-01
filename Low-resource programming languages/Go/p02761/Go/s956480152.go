package main
 
import (
	"fmt"
)
 
func main() {
	var N, M, K, V int
	fmt.Scan(&N)
	fmt.Scan(&M)
	l := make([]int, N)
	m := make(map[int]int, N)
	for i := 0; i < M; i++ {
	    fmt.Scan(&K)
		fmt.Scan(&V)
		m[K - 1] = m[K - 1] + 1
		if l[K-1] == 0 {
			l[K-1] = V
		} else if l[K-1] != V {
			fmt.Println(-1)
			return
		}
	}
	if l[0] == 0 && m[0] >= 1 {
		fmt.Println(-1)
		return
	} else if l[0] == 0 {
		l[0] = 1
		for _, v := range l {
			fmt.Print(v)
		}
	} else {
		for _, v := range l {
			fmt.Print(v)
		}
	}
}
