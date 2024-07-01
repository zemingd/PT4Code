package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	fmt.Printf("%v:%v:%v\n",
		s/(60*60)%60,
		s/60%60,
		s%60)
}

