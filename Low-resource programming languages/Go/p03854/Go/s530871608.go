package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	ss := map[string]bool{"maerd": true, "remaerd": true, "esare": true, "resare": true}
	l := len(s)
	t := ""
	for i := 0; i < l; i++ {
		t += string(s[l-i-1])
		if len(t) == 5 && ss[t] {
			t = ""
		} else if len(t) == 7 && ss[t] {
			t = ""
		} else if 7 < len(t) {
			fmt.Println("NO")
			return
		}
	}

	if t == "" {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
