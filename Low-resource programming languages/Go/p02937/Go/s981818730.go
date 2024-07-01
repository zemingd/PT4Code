package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	mp := map[rune]bool{}
	ar := make([][]int, 26)
	for i, v := range s {
		mp[v] = true
		ar[v-'a'] = append(ar[v-'a'], i+1)
	}
	for _, v := range t {
		if !mp[v] {
			fmt.Println(-1)
			return
		}
	}
	sum := 0
	now := 0
	for _, v := range t {
		vv := ar[v-'a']
		se := false
		for _, v2 := range vv {
			if now < v2 {
				now = v2
				se = true
				break
			}
		}
		if se {
			continue
		}
		sum++
		now = vv[0]
	}
	fmt.Println(sum*len(s) + now)
}
