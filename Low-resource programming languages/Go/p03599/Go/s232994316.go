package main

import "fmt"

func main() {
	var A, B, C, D, E, F, WW, WS int
	fmt.Scan(&A, &B, &C, &D, &E, &F)
	// fmt.Printf("[dbg] A %d, B %d, C %d, D %d, E %d, F %d\n", A, B, C, D, E, F)
	var max, d float64 = 0.0, 0.0
	for i := 0; 100*A*i <= F; i++ {
		for j := 0; 100*B*j+100*A*i <= F; j++ {
			for k := 0; C*k <= (B*j+A*i)*E; k++ {
				for l := 0; C*k+D*l <= (B*j+A*i)*E; l++ {
					ww := 100*A*i + 100*B*j
					ws := C*k + D*l
					// fmt.Printf("[dbg] ww %d, ws %d (i %d, j %d, k %d, l %d)\n", ww, ws, i, j, k, l)
					if ww+ws <= F {
						d = float64(ws) * float64(100) / float64(ww+ws)
						if d > max {
							max = d
							// fmt.Printf("[dbg] (w %d, s %d) maxd %.3f, i %d, j %d, k %d, l %d\n", ww, ws, max, i, j, k, l)
							WW = ww
							WS = ws
						}
					}
				}
			}
		}
	}
	fmt.Println(WW+WS, WS)
}
