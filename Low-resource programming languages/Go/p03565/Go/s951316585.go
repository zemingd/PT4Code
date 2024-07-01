package main

import "fmt"

func main() {
	var sd, t string
	fmt.Scan(&sd, &t)

	tl := len(t)
	s := []byte(sd)

	find := false
	for i := len(sd) - tl; i >= 0; i-- {
		match := true
		for ii := 0; ii < tl; ii++ {
			if sd[i+ii] == '?' || sd[i+ii] == t[ii] {
				continue
			}
			match = false
		}
		if !match {
			continue
		}

		find = true
		for ii := 0; ii < tl; ii++ {
			s[i+ii] = t[ii]
		}
		break
	}

	if !find {
		fmt.Println("UNRESTORABLE")
		return
	}

	for i := range s {
		if s[i] == '?' {
			s[i] = 'a'
		}
	}

	fmt.Println(string(s))
}
