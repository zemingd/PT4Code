package main

import "fmt"

func main () {
	var K int
	var s string
	fmt.Scanf("%s", &s)

	fmt.Scanf("%d", &K)

	var res int64 = 0
	S := len(s)
	lastChange := false
	for i := 0; i < S-1; i ++ {
		if s[i] == s[i+1] {
			res += int64(1)
			i ++

			if i == S-1 {
				lastChange = true
			}
		}
	}
	if S == 1 {
		res = int64(K) / 2
	} else if S > 1 && s[0] == s[S-1] && !lastChange {
		res = res * int64(K) + int64(K) - 1
	} else {
		res = res * int64(K)
	}


	fmt.Printf("%d", res)
}