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
                if i-1 > 0 && L[i] == L[i-1] {
                        continue
                }
                a := L[i]
                for j := i + 1; j < len(L); j++ {
                        if j-1 > i+1 && L[j] == L[j-1] {
                                continue
                        }
                        b := L[j]
                        for k := j + 1; k < len(L); k++ {
                                if k-1 > j+1 && L[k] == L[k-1] {
                                        continue
                                }
                                c := L[k]
                                if a < b+c && b < c+a && c < a+b {
                                        cnt++
                                }
                        }
                }
        }
        writer.WriteString(strconv.Itoa(cnt) + "\n")
}
