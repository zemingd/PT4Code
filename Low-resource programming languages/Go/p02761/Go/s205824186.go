package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	ss := make([]int, m)
	cs := make([]string, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&ss[i], &cs[i])
		ss[i]--
	}

	for i := 0; i <= 999; i++ {
		str := fmt.Sprintf("%03d", i)
		ok := true
		for j := 0; j < m; j++ {
			s, c := ss[j], cs[j]
			if string(str[s]) != c {
				ok = false
				break
			}
		}
		if ok && n == len(fmt.Sprintf("%d", i)) {
			fmt.Println(i)
			return
		}
	}
	fmt.Println(-1)
}
