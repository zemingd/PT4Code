package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	
	A := ScanInt(scanner)
	B := ScanInt(scanner)
	K := ScanInt(scanner)
	
	if B - A + 1 >= 2 * K {
    	for i := A; i < A + K; i++ {
    	    fmt.Println(i)
    	}
    	for i := B - K + 1; i <= B; i++ {
    	    fmt.Println(i)
    	}
    } else {
        for i := A; i <= B; i++ {
            fmt.Println(i)
        }
    }
}

func ScanInt(scanner *bufio.Scanner) int {
	scanner.Scan()
	i, e := strconv.Atoi(scanner.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func ScanFloat64(scanner *bufio.Scanner) float64 {
	scanner.Scan()
	f, e := strconv.ParseFloat(scanner.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func ScanText(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func Max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func Abs(a int) int {
	if a < 0 {
		a *= -1
	}
	return a
}
 
