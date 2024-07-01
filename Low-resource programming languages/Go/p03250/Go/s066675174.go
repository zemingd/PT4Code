package main

import (
	"fmt"
	"strconv"
)

func main() {
	var panels []int
	var a, b, c int
	_, err := fmt.Scanf("%d %d %d", &a, &b, &c)
	if err != nil {
		fmt.Println(err)
	}

	panels = append(panels, a)
	panels = append(panels, b)
	panels = append(panels, c)

	for i := 0; i < len(panels); i++ {
		max := i
		for j := i + 1; j < len(panels); j++ {
			if panels[max] < panels[j] {
				max = j
			}
		}
		if i != max {
			tmp := panels[max]
			panels[max] = panels[i]
			panels[i] = tmp
		}
	}

	d := strconv.Itoa(panels[0])
	e := strconv.Itoa(panels[1])
	f, _ := strconv.Atoi(d + e)
	sum := f + panels[2]
	fmt.Println(sum)