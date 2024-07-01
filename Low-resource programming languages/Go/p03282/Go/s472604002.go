package main

import "fmt"

func count_one_in_prefix(s string) int {
	for i, r := range s {
		if r != '1' {
			return i
		}
	}
	return len(s)
}

func main() {
	var S string
	var K int64
	fmt.Scan(&S, &K)
	if numOnes := count_one_in_prefix(S); K <= int64(numOnes) {
		fmt.Println(1)
	} else {
		fmt.Printf("%c\n", S[numOnes])
	}
}
