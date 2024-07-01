package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	rgb := strings.Split(s, "")
	var r, g, b []int
	ans := 0
	var max, min, div int

	for i := 0; i < n; i++ {
		if rgb[i] == "R" {
			r = append(r, i)
		} else if rgb[i] == "G" {
			g = append(g, i)
		} else {
			b = append(b, i)
		}
	}
	for i := range r {
		for j := range g {
			ans = ans + len(b)
			if r[i]-g[j] < 0 {
				max = g[j]
				min = r[i]
			} else {
				max = r[i]
				min = g[j]
			}
			div = max - min
			//			fmt.Println(max, min, div)
			if div%2 == 0 {
				if rgb[min+div/2] == "B" {
					ans--
				}
			}
			if min-div >= 0 {
				if rgb[min-div] == "B" {
					ans--
				}
			}
			if max+div <= n-1 {
				if rgb[max+div] == "B" {
					ans--
				}
			}
		}
	}

	//	for i := range r {
	//		for j := range g {
	//			for k := range b {
	//				tmp := []int{r[i], g[j], b[k]}
	//				sort.Sort(sort.IntSlice(tmp))
	//				if tmp[1]-tmp[0] != tmp[2]-tmp[1] {
	//					ans++
	//				}
	//			}
	//		}
	//	}
	//	fmt.Println("r", r)
	//	fmt.Println("g", g)
	//	fmt.Println("b", b)
	//	fmt.Println("rgb", rgb)
	fmt.Println(ans)
}
