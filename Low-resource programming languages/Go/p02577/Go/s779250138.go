package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
)

func main() {
	s := bufio.NewScanner(os.Stdin)

	n := &big.Int{}
	s.Scan()
	n.SetString(s.Text(), 10)

	ans := &big.Int{}
	ans.Mod(n, big.NewInt(9))

	fmt.Println(ans)
}
