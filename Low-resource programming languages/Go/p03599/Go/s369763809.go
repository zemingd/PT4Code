package main

import "fmt"

func main() {
	var A, B, C, D, E, F, WW, WS int
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	var max, d float64 = 0.0, 0.0
	for i := 0; 100*A*i <= F; i++ {
		for j := 0; 100*B*j+100*A*i <= F; j++ {
			ww := 100 * (A*i + B*j)
			mws := (A*i + B*j) * E
			for k := 0; C*k <= mws && C*k <= F-ww; k++ {
				for l := 0; C*k+D*l <= mws && D*l <= F-ww-C*k; l++ {
					ws := C*k + D*l
					if k == 0 && l == 0 {
						d = 0.0
					} else {
						d = float64(ws) / float64(ww+ws)
					}
					if d > max {
						max = d
						WW = ww
						WS = ws
					}
				}
			}
		}
	}
	fmt.Println(WW+WS, WS)
}
