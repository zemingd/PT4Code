package main

import "fmt"

func main() {
	var n, t, a int
	var h []int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d %d", &t, &a)

	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		h = append(h, tmp)
	}

	hh := (t - a) * 1000 / 6
	var an, tmp int
	tmp = 1<<63 - 2
	for j, i := range h {
		if tmp > hh-i && hh-i > (-tmp) {
			tmp = abs(hh - i)
			an = j + 1
		}
	}
	fmt.Println(an)
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
