package main

import (
        "bufio"
        "os"
        "sort"
        "strconv"
)

func main() {
        scanner := bufio.NewScanner(os.Stdin)
        scanner.Split(bufio.ScanWords)
        writer := bufio.NewWriter(os.Stdout)
        defer writer.Flush()

        scanner.Scan()
        N, _ := strconv.Atoi(scanner.Text())
        L := make([]int, N)
        for i := range L {
                scanner.Scan()
                L[i], _ = strconv.Atoi(scanner.Text())
        }

        cnt := 0
        sort.Ints(L)
        for i := range L {
                a := L[i]
                for j := i + 1; j < len(L); j++ {
                        b := L[j]
                        for k := j + 1; k < len(L); k++ {
                                c := L[k]
                                if a < b+c && b < c+a && c < a+b {
                                        cnt++
                                }
                        }
                }
        }
        writer.WriteString(strconv.Itoa(cnt) + "\n")
}
