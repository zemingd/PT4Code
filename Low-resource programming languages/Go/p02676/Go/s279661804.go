package main

import "fmt"

func main() {
    var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

    if n > len(s) {
        fmt.Println(s)
        return
    }else{
		fmt.Println(s[:n]+"...")
	}
}