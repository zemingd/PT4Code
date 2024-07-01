package main

import "fmt"

func main() {
	var k, out string
	var s int
	fmt.Scan(&k, &s)

	for i, v := range k {
		if i < s {
			str := string(v)
			out = out + str
			if i == s - 1 {
				out = out + "..."
			}
		} else{
			break
		}

	}
	fmt.Println(out)

}