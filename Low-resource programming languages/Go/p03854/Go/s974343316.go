package main

import "fmt"

func reverse(s string) string {
	r := make([]byte, len(s))
	i, j := len(s)-1, 0
	for i >= 0 {
		r[j] = s[i]
		j++
		i--
	}
	return string(r)
}

func main() {
	var rev = []string{"dream", "dreamer", "erase", "eraser"}
	revs := make([]string, len(rev))
	for i, v := range rev {
		revs[i] = reverse(v)
	}
	// fmt.Println("revs", revs)
	var S string
	fmt.Scan(&S)
	RS := reverse(S)
	var i int
	var ok bool
	for i < len(RS) {
		ok = false
		for j := 0; j < len(revs); j++ {
			if i+len(revs[j])-1 < len(RS) && RS[i:i+len(revs[j])] == revs[j] {
				ok = true
				i += len(revs[j])
				break
			}
		}
		if !ok {
			break
		}
	}
	if ok {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
