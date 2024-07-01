package main

import "fmt"

func main() {
	var sp, t string
	fmt.Scan(&sp, &t)

	include := false
	j := 0
	for i := range sp {
		if sp[i] == t[j] {
			if j == len(t)-1 {
				include = true
				break
			}
			j++
		} else {
			j = 0
		}
	}

	begin := -1
	if !include {
		j = len(t) - 1
		for i := len(sp) - 1; i >= 0; i-- {
			if sp[i] == t[j] || sp[i] == '?' {
				j--
				if j == -1 {
					begin = i
					break
				}
			} else {
				j = len(t) - 1
			}
		}
	}

	s := ""
	if include {
		for _, c := range sp {
			if c == '?' {
				s += string('a')
			} else {
				s += string(c)
			}
		}
		fmt.Println(s)
	} else if begin != -1 {
		for i := range sp {
			if i >= begin && i < begin+len(t) {
				s += string(t[i-begin])
			} else if sp[i] == '?' {
				s += string('a')
			} else {
				s += string(sp[i])
			}
		}
		fmt.Println(s)
	} else {
		fmt.Println("UNRESTORABLE")
	}
}
