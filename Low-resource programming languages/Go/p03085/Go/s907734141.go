package main

import "fmt"

func main() {
	var b, ret string
	fmt.Scan(&b)
	switch b {
	case "A":
		ret = "T"
	case "T":
		ret = "A"
	case "C":
		ret = "G"
	case "G":
		ret = "C"
	}
	fmt.Println(ret)

}