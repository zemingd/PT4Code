package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	var al, bl int
	if h % 2 == 0{
		al = (h / 2)
		bl = al
	} else {
		al = (h / 2) + 1
		bl = (h / 2)
	}

	if w%2 == 0 {
		fmt.Println((al + bl) * (w/2))
	} else {
		fmt.Println(((al + bl) * (w/2)) + al)
	}
}