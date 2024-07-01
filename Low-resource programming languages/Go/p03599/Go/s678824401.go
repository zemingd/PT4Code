package main

import (
	"bufio"
	"fmt"
	"math"
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
	Water           int
	Sugar           int
	SugarSaturation int
	Cap             int
}

func (b *Beaker) isCapOver() bool {
	if b.Water+b.Sugar > b.Cap {
		return true
	}

	return false
}

func (b *Beaker) isSugarOver() bool {
	if b.SugarSaturation*b.Water/100 > b.SugarSaturation {
		return true
	}

	return false
}

func (b *Beaker) addWater(w int) bool {
	if (w + b.Water + b.Sugar) > b.Cap {
		return false
	}
	b.Water += w
	return true
}

func (b *Beaker) addSugar(s int) bool {

	if (s + b.Water + b.Sugar) > b.Cap {
		return false
	}

	if (s + b.Sugar) > (b.SugarSaturation * b.Water / 100) {
		return false
	}

	b.Sugar += s
	return true
}

func (b *Beaker) concentration() float64 {
	if (b.Sugar + b.Water) == 0 {
		return 0.0
	}
	return float64(b.Sugar) / (float64(b.Water) + float64(b.Sugar)) * 100.0
}

func (b *Beaker) sugarWater() int {
	return b.Sugar + b.Water
}
func main() {
	sc.Split(bufio.ScanWords)

	a := nextInt() * 100
	b := nextInt() * 100
	c := nextInt()
	d := nextInt()
	e := nextInt()
	f := nextInt()

	max := math.Inf(-1)

	var maxBeaker Beaker

	for i := 0; i <= f/a; i++ {

		beaker := Beaker{
			Water:           0,
			Sugar:           0,
			SugarSaturation: e,
			Cap:             f,
		}

		if !beaker.addWater(a * i) {
			break
		}

		for j := 0; j <= f/b; j++ {
			if !beaker.addWater(b * j) {
				break
			}

			for k := 0; k <= f/c; k++ {
				if !beaker.addSugar(c * k) {
					break
				}
				for l := 0; l <= f/d; l++ {
					if !beaker.addSugar(d * l) {
						break
					}

					// fmt.Printf("操作1を%d回\n", i)
					// fmt.Printf("操作2を%d回\n", j)
					// fmt.Printf("操作3を%d回\n", k)
					// fmt.Printf("操作4を%d回\n", l)
					// fmt.Printf("%+v\n", beaker)
					// fmt.Printf("容量:%d\n", beaker.sugarWater())
					// fmt.Printf("濃度:%f(％)\n", beaker.concentration())
					if max < beaker.concentration() {
						max = beaker.concentration()
						maxBeaker = beaker
					}

				}

			}
		}

	}

	fmt.Printf("%d %d\n", maxBeaker.sugarWater(), maxBeaker.Sugar)

}

