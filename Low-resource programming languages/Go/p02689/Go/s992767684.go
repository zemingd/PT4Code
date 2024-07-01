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
		load[from-1] = append(load[from-1], to-1)
		load[to-1] = append(load[to-1], from-1)
	}

	goodHill := 0
	for h:=0; h<n; h++ {
		//v := unique(load[h])
		flag := true
		myH := hill[h]
		for _, i := range load[h] {
			if myH <= hill[i] {
				flag = false
				break
			}
		}
		if flag == true {
			fmt.Println(100000, h+1)
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
