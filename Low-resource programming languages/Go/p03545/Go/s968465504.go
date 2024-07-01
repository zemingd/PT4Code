package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)

	for i := 0; i < 1<<uint(3); i++ {
		now := string(n[0])
		for j := 0; j < 3; j++ {
			if i>>uint(j)&1 == 1 {
				now += "+"
			} else {
				now += "-"
			}
			now += string(n[j+1])
		}
		// fmt.Println(now)

		ans, _ := strconv.Atoi(string(now[0]))
		for j := 0; j < 3; j++ {
			n1, _ := strconv.Atoi(string(now[j*2+2]))
			if string(now[j*2+1]) == "+" {
				ans += n1
			} else {
				ans -= n1
			}
		}

		if ans == 7 {
			fmt.Printf("%s=7\n", now)
			return
		}
	}

}
