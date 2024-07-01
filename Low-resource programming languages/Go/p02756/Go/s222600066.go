package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

func main() {
        buf := make([]byte, 10000000)
        si := bufio.NewScanner(os.Stdin)
        si.Split(bufio.ScanWords)
        si.Buffer(buf, 10000000)
        si.Scan()
        S := si.Bytes()
        si.Scan()
        Q, _ := strconv.Atoi(si.Text())
        s := make([]byte, 0, 800000)
        reversed := false
        for i := 0; i < Q; i++ {
                si.Scan()
                if si.Text() == "1" {
                        reversed = !reversed
                } else {
                        si.Scan()
                        f := si.Text()
                        si.Scan()
                        c := si.Text()
                        if f == "1" {
                                if reversed {
                                        S = append(S, c[0])
                                } else {
                                        s = append(s, c[0])
                                }
                        } else {
                                if reversed {
                                        s = append(s, c[0])
                                } else {
                                        S = append(S, c[0])
                                }
                        }
                }
        }
        for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {

                s[i], s[j] = s[j], s[i]

        }
        s = append(s, S...)
        if reversed {
                for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {

                        s[i], s[j] = s[j], s[i]

                }
        }
        fmt.Println(string(s))

}