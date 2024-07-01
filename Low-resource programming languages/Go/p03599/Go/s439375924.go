package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type Beaker struct {
	Water           float64
	Sugar           float64
	SugarSaturation float64
	Cap             float64
}

func (b *Beaker) addWater(w float64) bool {
	if (w + b.Water + b.Sugar) > b.Cap {
		return false
	}
	b.Water += w
	return true
}

func (b *Beaker) addSugar(s float64) bool {

	if (s + b.Water + b.Sugar) > b.Cap {
		return false
	}

	if (s + b.Sugar) > (b.SugarSaturation * b.Water / 100.0) {
		return false
	}

	b.Sugar += s
	return true
}

func (b *Beaker) concentration() float64 {
	if (b.Sugar + b.Water) == 0 {
		return 0.0
	}
	return b.Sugar / (b.Water + b.Sugar) * 100.0
}

func (b *Beaker) sugarWater() float64 {
	return b.Sugar + b.Water
}
func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt()
	b := nextInt()
	c := nextInt()
	d := nextInt()
	e := nextInt()
	f := nextInt()

	maxDense := 0.0
	maxW := 100 * a
	maxS := 0
	// var maxBeaker Beaker

	for i := 0; 100*a*i <= f; i++ {
		for j := 0; 100*b*j <= f-100*a*i; j++ {
			w := 100 * (a*i + b*j)
			cap := e * (a*i + b*j)
			for k := 0; c*k <= cap && c*k <= f-w; k++ {
				for l := 0; d*l <= cap-c*k && d*l <= f-w-c*k; l++ {
					sal := c*k + d*l
					var den float64
					if k == 0 && l == 0 {
						den = 0.0
					} else {
						den = float64(sal) / float64(w+sal)
					}
					if maxDense < den {
						maxDense = den
						maxW = w + sal
						maxS = sal
					}
				}

			}
		}
	}

	fmt.Printf("%d %d\n", maxW, maxS)
	// for i := 0; i <= f/a; i++ {

	// 	beaker := Beaker{
	// 		Water:           0.0,
	// 		Sugar:           0.0,
	// 		SugarSaturation: float64(e),
	// 		Cap:             float64(f),
	// 	}

	// 	if !beaker.addWater(float64(a * i)) {
	// 	}

	// 	for j := 0; j <= f/b; j++ {
	// 		if !beaker.addWater(float64(b * j)) {
	// 		}

	// 		if beaker.Water != 0 {

	// 			for k := 0; k <= f/c; k++ {
	// 				if !beaker.addSugar(float64(c * k)) {
	// 				}
	// 				for l := 0; l <= f/d; l++ {
	// 					if !beaker.addSugar(float64(d * l)) {

	// 						fmt.Printf("操作1を%d回\n", i)
	// 						fmt.Printf("操作2を%d回\n", j)
	// 						fmt.Printf("操作3を%d回\n", k)
	// 						fmt.Printf("操作4を%d回\n", l)
	// 						fmt.Printf("%+v\n", beaker)
	// 						fmt.Printf("容量:%f\n", beaker.sugarWater())
	// 						fmt.Printf("濃度:%f(％)\n", beaker.concentration())
	// 						if max < beaker.concentration() {
	// 							max = beaker.concentration()
	// 							maxBeaker = beaker
	// 						}

	// 					}

	// 				}
	// 			}
	// 		}
	// 	}
	// }

	// fmt.Printf("%+v\n", maxBeaker)
	// fmt.Printf("容量:%f\n", maxBeaker.sugarWater())
	// fmt.Printf("濃度:%f(％)\n", maxBeaker.concentration())

	// fmt.Printf("%d %d\n", int(maxBeaker.sugarWater()), int(maxBeaker.Sugar))
}
