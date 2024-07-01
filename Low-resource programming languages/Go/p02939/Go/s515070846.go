package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	cnt := 0
	p := ""
	var b []byte
	for i := 0; i < len(s); i++ {
		b = append(b, s[i])
		if string(b) == p {
			continue
		}
		p = string(b)
		b = []byte{}
		cnt++
	}

	fmt.Println(cnt)
}
