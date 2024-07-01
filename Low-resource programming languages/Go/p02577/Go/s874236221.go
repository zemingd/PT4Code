package main

import "fmt"
import "strconv"

func main() {
	var n string
	var m int
	fmt.Scanf("%s", &n)
	in := []byte(n)
	for _, i := range in {
		tmp, _ := strconv.Atoi(string(i))
		m = (m + tmp) % 9
	}
	if m%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
