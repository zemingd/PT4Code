package main

import "fmt"

func main() {
	b := SingleStr()

	switch b {
	case "A":
		fmt.Printf("%#v\n", "T")
	case "T":
		fmt.Printf("%#v\n", "A")
	case "C":
		fmt.Printf("%#v\n", "G")
	case "G":
		fmt.Printf("%#v\n", "C")
	}
}

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}
