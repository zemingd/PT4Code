package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	x := make([][]int, N)
	y := make([][]int, N)
	as := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&as[i])
		x[i] = make([]int, as[i])
		y[i] = make([]int, as[i])
		for j := 0; j < as[i]; j++ {
			fmt.Scan(&x[i][j], &y[i][j])
			x[i][j]--
		}
	}
	max := 0
	for i := 0; i < 2<<N; i++ {
		// ビットが立っている時、正直者
		consistent := true
		count := 0
		for j := 0; j < N; j++ {
			if i>>j&1 == 0 {
				continue
			}
			count++
			for k := 0; k < as[j]; k++ {
				if y[j][k] == 1 && i>>x[j][k]&1 == 0 {
					consistent = false
					break
				}
				if y[j][k] == 0 && i>>x[j][k]&1 == 1 {
					consistent = false
					break
				}
			}
			if !consistent {
				break
			}
		}
		if consistent && max < count {
			max = count
		}
	}
	fmt.Println(max)
}
