package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	var ax, ay, az, aw int
	var conc float64

	isOK := func(x, y, z, w int) bool {
		return 100*(x*a+y*b)+z*c+w*d <= f && z*c+w*d <= e*(x*a+y*b)
	}

	for x := 0; x <= 30; x++ {
		if !isOK(x, 0, 0, 0) {
			break
		}
		for y := 0; y <= 30; y++ {
			if !isOK(x, y, 0, 0) {
				break
			}
			for z := 0; z <= 3000; z++ {
				if !isOK(x, y, z, 0) {
					break
				}
				for w := 0; w <= 3000; w++ {
					if !isOK(x, y, z, w) {
						break
					}
					p := z*c + w*d
					q := 100*(x*a+y*b) + z*c + w*d
					r := float64(p) / float64(q)
					if r > conc {
						conc = r
						ax, ay, az, aw = x, y, z, w
					}
				}
			}
		}
	}
	fmt.Println(100*(ax*a+ay*b)+az*c+aw*d, az*c+aw*d)

}
