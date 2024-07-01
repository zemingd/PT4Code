package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)

	a := make([][]int, n)
	p := make([]int, n)
	for i := 0; i < n; i++ {

		fmt.Scan(&p[i])
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	ans := 1200001
	var tot int
	var ok bool
	for bits := 0; bits < 1<<n; bits++ {
		tot = 0
		ok = true
		skill := make([]int, m)
		for i := 0; i < n; i++ {
			if (bits>>i)&1 == 1 {
				tot += p[i]
				for j := 0; j < m; j++ {
					skill[j] += a[i][j]
				}
			}
		}

		for _, v := range skill {
			if v < x {
				ok = false
				break
			}
		}

		if ok {
			if ans > tot {
				ans = tot
			}
		}
	}

	if ans != 1200001 {
		fmt.Println(ans)
	} else {
		fmt.Println("-1")
	}

}
