package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s\n", &s)
	ans := make([]int, len(s))
	var rcount, lcount, point int

	for i, l := range s {

		if (lcount == 0) && (string(l) == "L") {
			point = i
		}

		if ((lcount > 0) && (string(l) == "R")) || i == len(s)-1 {
			if i == len(s)-1 {
				lcount++
			}

			ans[point-1] = rcount/2 + lcount/2 + rcount%2
			ans[point] = rcount/2 + lcount/2 + lcount%2
			rcount, lcount = 0, 0
		}

		if string(l) == "R" {
			rcount++
		} else {
			lcount++
		}

	}

	for _, i := range ans {
		fmt.Printf("%d ", i)
	}
}
