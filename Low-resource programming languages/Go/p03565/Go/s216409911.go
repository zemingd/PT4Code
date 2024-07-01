package main

import "fmt"

func main() {
	var sd, t string
	fmt.Scan(&sd)
	fmt.Scan(&t)

	lensd := len(sd)
	lent := len(t)

	for i := lensd - lent; i >= 0; i-- {
		is_matched := true
		for j := 0; j < lent; j++ {
			if sd[i + j] != '?' && sd[i + j] != t[j] {
				is_matched = false
				break
			}
		}
		if is_matched {
			s := ""
			for k := 0; k < lensd; k++ {
				if i <= k && k < i + lent {
					s += string(t[k - i])
				} else {
					if sd[k] == '?' {
						s += "a"
					} else {
						s += string(sd[k])
					}
				}
			}
			fmt.Println(s)
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}