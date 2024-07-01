package main

import "fmt"

func main() {
	var s int
	_, _ = fmt.Scan(&s)
	fmt.Printf("%d:%d:%d\n", s/60/60, s/60%60, s%60)
}

