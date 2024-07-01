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

    var spans = []span{ span{ head:0, tail:0 }}
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

    var max = 0
    for j := 0; j < len(spans); j++ {
        var head = spans[j]
        var tail span
        if (j+k) > len(spans) - 1 {
            tail = spans[len(spans)-1]
        } else {
            tail = spans[j+k]
        }

        if max < (tail.tail - head.head) {
            max = (tail.tail - head.head)
        }
    }

    fmt.Println(max)
}


