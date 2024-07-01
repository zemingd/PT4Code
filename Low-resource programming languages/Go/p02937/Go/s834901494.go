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
	cr := make([]int, 26)
	for _, v := range t {
		vv := ar[v-'a']
		left, right := 0, len(vv)-1
		se := -1
		for left <= right {
			mid := (left + right) / 2
			v2 := vv[mid]
			if now < v2 {
				if cr[v-'a'] >= v2 {
					left = mid + 1
					continue
				}
				if se == -1 {
					se = v2
					right = mid - 1
					continue
				}
				if v2 < se {
					se = v2
					right = mid - 1
					continue
				}
				right = mid - 1
			} else {
				left = mid + 1
			}
		}
		if se != -1 {
			now = se
			cr[v-'a'] = now
			continue
		}
		sum++
		now = vv[0]
		cr = make([]int, 26)
		cr[v-'a'] = now
	}
	fmt.Println(sum*len(s) + now)
}
