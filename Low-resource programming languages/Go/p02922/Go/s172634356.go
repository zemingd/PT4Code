package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
)

func ScanSplitIntLine(size int) []int {
    scanner := bufio.NewScanner(os.Stdin)
    scanner.Split(bufio.ScanWords)
    line := make([]int, 0, size)
    for i := 0; i < size; i++ {
        scanner.Scan()
        stringInput := scanner.Text()
        intInput, err := strconv.Atoi(stringInput)
        if err != nil {
            fmt.Println(err)
        }
        line = append(line, intInput)
    }
    return line
}

func main() {
    AB := ScanSplitIntLine(2) 
    A := AB[0]
    B := AB[1]

    if A == 2 {
        fmt.Println(B - 1)
        os.Exit(0)
    }

    if B == 1 {
        fmt.Println(0)
        os.Exit(0)
    }

    if A >= B {
        fmt.Println(1)
        os.Exit(0)
    }

    tup := B / (A-1)
    if B % (A-1) > 1 {
        tup += 1
    }
    fmt.Println(tup)
}