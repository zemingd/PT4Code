package main

import "fmt"

func match(idx int, s, t string) bool {
	for i := 0; i < len(t); i++ {
		if s[idx+i] != t[i] && s[idx+i] != '?' {
			return false
		}
	}
	return true
}

func fill(idx int, s, t string) string {
	tmp := []byte(s)
	fmt.Printf("%v\n", tmp)
	for i := 0; i < len(t); i++ {
		tmp[idx+i] = t[i]
	}
	for i := 0; i < len(s); i++ {
		if tmp[i] == '?' {
			tmp[i] = 'a'
		}
	}
	return string(tmp)
}

func main() {
	sd, t := "", ""
	fmt.Scan(&sd, &t)
	//
	f := -1
	ln := len(sd) - len(t) + 1
	for i := 0; i < ln; i++ {
		if match(i, sd, t) {
			f = i
			//      	break
		}
	}

	if f == -1 {
		fmt.Println("UNRESTORABLE")
	} else {
		fmt.Println(fill(f, sd, t))
	}

}
