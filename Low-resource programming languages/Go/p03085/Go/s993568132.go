package main

import "fmt"

func main() {
        var b string
        fmt.Scan(&b)

        m := map[string]string{
                "A": "T",
                "T": "A",
                "C": "G",
                "G": "C",
        }

        fmt.Println(m[b])
}
