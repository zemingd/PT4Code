package main

import "fmt"
import "math"

func main() {
	var sin, tin string
	fmt.Scanf("%s\n%s", &sin, &tin)

	s := []byte(sin)
	t := []byte(tin)
	ans, tmp := math.MaxInt64, 0
	//fmt.Println(s)
	//fmt.Println(t)
	for i := 0; i <= len(s)-len(t); i++ {
		tmp = 0
		for j := 0; j < len(t); j++ {
			if t[j] != s[j+i] {
				tmp++
			}
		}
		//fmt.Println(tmp)
		if ans > tmp {
			ans = tmp
		}
	}
	fmt.Println(tmp)
}
