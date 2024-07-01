package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

func main() {
        buf := make([]byte, 200000)
        si := bufio.NewScanner(os.Stdin)
        si.Split(bufio.ScanWords)
        si.Buffer(buf, 200000)
        si.Scan()
        S := si.Bytes()
        si.Scan()
        Q, _ := strconv.Atoi(si.Text())
        s := make([]byte, 0, 300000)
        for i := 0; i < Q; i++ {
                si.Scan()
                if si.Text() == "1" {
                        if len(s) == 0 {
                                S[0], S[len(S)-1] = S[len(S)-1], S[0]
                        } else {
                                s[len(s)-1], S[len(S)-1] = S[len(S)-1], s[len(s)-1]
                        }
                } else {
                        si.Scan()
                        f := si.Text()
                        si.Scan()
                        c := si.Text()
                        if f == "1" {
                                s = append(s, c[0])
                        } else {
                                S = append(S, c[0])
                        }
                }
        }
        for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {

                s[i], s[j] = s[j], s[i]

        }
        s = append(s, S...)
        fmt.Println(string(s))

}