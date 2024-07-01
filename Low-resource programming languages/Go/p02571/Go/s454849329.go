package main

import "fmt"

func main() {
	var s, t string
	fmt.Scanf("%s\n%s\n", &s, &t)

	max := 0
	for i := 0; i < len(s)-len(t)+1; i++ {
		tmpmax := 0
		tmp := 0
		for j := 0; j < len(t); j++ {
			if s[i+j] == t[j] {
				tmp++
			} else {
				if tmpmax < tmp {
					tmpmax = tmp
				}
				tmp = 0
			}
		}
		if tmpmax < tmp {
			tmpmax = tmp
		}

		if max < tmpmax {
			max = tmpmax
		}
	}

	fmt.Println(len(t) - max)
}
