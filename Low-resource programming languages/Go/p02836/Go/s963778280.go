package main

import "fmt"

func main(){
	var p string
	fmt.Scanf("%s", &p)

	fmt.Printf("%d\n", kaibun(p))
}

func kaibun(p string) int {
	var c []rune
	var ret int

	for _, v := range p {
		c = append(c, v)
	}

	index := len(c) - 1
	for k, v := range c {
		if v != c[index - k] {
			ret++
		}
	}
	return ret / 2
}
