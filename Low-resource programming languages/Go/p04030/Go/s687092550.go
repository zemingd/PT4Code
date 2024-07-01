package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	t := make([]byte, 0)
	for _, c := range []byte(s) {
		switch c {
		case '0', '1':
			t = append(t, c)
		default:
			if len(t) > 0 {
				t = t[:len(t)-1]
			}
		}
	}
	fmt.Println(string(t))
}
