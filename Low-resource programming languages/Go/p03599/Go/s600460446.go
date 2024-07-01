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

	for x := 0; x <= 100 && isOK(x, 0, 0, 0); x++ {
		for y := 0; y <= 100 && isOK(x, y, 0, 0); y++ {
			for z := 0; z <= 30000 && isOK(x, y, z, 0); z++ {
				for w := 0; w <= 30000 && isOK(x, y, z, w); w++ {
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
