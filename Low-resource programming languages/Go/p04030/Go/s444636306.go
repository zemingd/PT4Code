package main

import "fmt"
import "strings"

func main() {
	var s string
	fmt.Scan(&s)

	keys := strings.Split(s, "")

	ret := make([]string, 0, len(keys))
	for _, k := range keys {
		if k == "0" {
			ret = append(ret, "0")
		}
		if k == "1" {
			ret = append(ret, "1")
		}
		if k == "B" {
			if len(ret) == 0 {
				continue
			}
			ret = ret[0 : len(ret)-1]
		}
	}

	fmt.Println(strings.Join(ret, ""))
}