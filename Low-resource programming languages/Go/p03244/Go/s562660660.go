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
		for v = range evc {
			break
		}
		if ovc[v] > 0 {
			fmt.Printf("%d\n", n/2)
			return
		}
	}
	evm, ovm := 0, 0
	evsm, ovsm := 0, 0
	var emv, omv int
	for mv, vc := range evc {
		if vc > evm {
			evsm = evm
			evm = vc
			emv = mv
		} else if vc > evsm {
			evsm = vc
		}
	}
	for mv, vc := range ovc {
		if vc > ovm {
			ovsm = ovm
			ovm = vc
			omv = mv
		} else if vc > ovsm {
			ovsm = vc
		}
	}
	if emv == omv {
		vm := ovm
		vsm := evsm
		if ovsm > vsm && ovsm > 0 {
			vm = evm
			vsm = ovsm
		}
		fmt.Printf("%d\n", n-vsm-vm)
		return
	}
	fmt.Printf("%d\n", n-evm-ovm)
}
