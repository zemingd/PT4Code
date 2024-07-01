package main

import (
    "fmt"
)

const ZERO byte = 48
const ONE byte = 49

type span struct {
    head int
    tail int
}

func (s *span) Len() int {
    return s.tail - s.head
}

func main() {
    var n,k int
    var s string
    fmt.Scan(&n, &k, &s)

    var spans = []span{}
    var current = span{}
    var inSpan = false

    for i:=0; i < len(s); i++ {
        if s[i] == ZERO {
            if inSpan {
                inSpan = false
                current.tail = i
                spans = append(spans, current)
            }
        }

        if s[i] == ONE {
            if !inSpan {
                inSpan = true
                current = span{ head: i }
            }
        }
    }

    if inSpan {
        inSpan = false
        current.tail = len(s)
        spans = append(spans, current)
    }

    var j = 0
    var max = 0
    for {
        if (j+k) > len(spans) - 1 {
            break
        }

        if max < (spans[j+k].tail - spans[j].head) {
            max = (spans[j+k].tail - spans[j].head)
        }
        j++
    }

    fmt.Println(max)
}
