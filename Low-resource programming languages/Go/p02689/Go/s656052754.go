package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	hill := make(map[int]int, n)
	for a:=0; a<n; a++ {
		var t int
		fmt.Scan(&t)
		hill[a] = t
	}

	load := make(map[int][]int, n+10)
	for i:=0; i<m; i++ {
		var from, to int
		fmt.Scan(&from, &to)
		load[from] = append(load[from], to)
		load[to] = append(load[to], from)
	}

	goodHill := 0
	for k, v := range load {
		v = unique(v)
		flag := true
		myH := hill[k - 1]
		for _, i := range v {
			if myH < hill[i-1] {
				flag = false
				break
			}
		}
		if flag == true {
			goodHill += 1
		}
	}

	fmt.Println(goodHill)
}

func unique(a []int) []int {
	var u []int
	tmp := make(map[int]bool, len(a))
	for _, i := range a {
		if tmp[i] == false {
			u = append(u, i)
			
		}
		tmp[i] = true
	}
	return u
}
