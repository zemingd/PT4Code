package main

import "fmt"

func main() {
	var k int
	var s string
	fmt.Scan(&k, &s)


	ss := split(s)
	if len(ss) <= k {
		fmt.Println(s)
		return
	}
	fmt.Print(s[0:k])
	fmt.Print("...")



}


func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

