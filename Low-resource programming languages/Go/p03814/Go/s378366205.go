package main

import "fmt"

func main() {

	var s string
	fmt.Scan(&s)
	count := 1
	var ok bool
	for _, v := range s {
		if string(v) == "A" && !ok{
			ok = true
		}
		if string(v) == "Z"{
			ok = false
		}
		if ok {
			count ++
		}
	}
	fmt.Println(count)

}