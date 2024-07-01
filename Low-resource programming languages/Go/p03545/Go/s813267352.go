package main

import (
	"fmt"
	"go/token"
	"go/types"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := ""
	for i := 0; i < 8; i++ {
		formula := string(s[0])
		for j := 0; j < 3; j++ {
			if i&(1<<uint(j)) > 0 {
				formula += "+"
			} else {
				formula += "-"
			}
			formula += string(s[j+1])
		}
		result, err := types.Eval(token.NewFileSet(), nil, token.NoPos, formula)
		if err != nil {
			panic(err)
		}
		calcedValue, err := strconv.Atoi(result.Value.String())
		if err != nil {
			panic(err)
		}

		if calcedValue == 7 {
			ans = formula + "=7"
			break
		}
	}

	fmt.Println(ans)
}
