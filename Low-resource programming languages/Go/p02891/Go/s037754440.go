package main

import "fmt"

func main() {
	var S string
	var K int
	fmt.Scan(&S, &K)

	d := 0
	p := ""
	for i := 0; i < len(S); i++ {
		c := string(S[i])
		if c == p {
			d++
			p = ""
		} else {
			p = c
		}
	}

	o := 0
	if S[0] == S[len(S)-1] && S[len(S)-2] != S[len(S)-1] {
		o = K - 1
	}

	fmt.Println(d*K + o)
}
