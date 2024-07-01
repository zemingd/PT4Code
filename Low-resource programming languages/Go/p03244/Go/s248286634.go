package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	evc, ovc := make(map[int]int), make(map[int]int)
	for i := 0; i < n/2; i++ {
		var v int
		fmt.Scanf("%d", &v)
		evc[v]++
		fmt.Scanf("%d", &v)
		ovc[v]++
	}
	if len(evc) == 1 && len(ovc) == 1 {
		var v int
		for v, _ = range evc {
			break
		}
		if ovc[v] > 0 {
			fmt.Printf("%d\n", n/2)
			return
		}
	}
	evm, ovm := 0, 0
	for _, vc := range evc {
		if vc > evm {
			evm = vc
		}
	}
	for _, vc := range ovc {
		if vc > ovm {
			ovm = vc
		}
	}
	fmt.Printf("%d\n", n-evm-ovm)
}
