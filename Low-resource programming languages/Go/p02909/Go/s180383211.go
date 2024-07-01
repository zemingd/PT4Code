package main

import (
        "fmt"
        "testing"
)

var cases = []struct {
        input string
        want  string
}{
        {input: "Sunny", want: "Cloudy"},
        {input: "Rainy", want: "Sunny"},
}

func TestWeatherPrediction(t *testing.T) {
        for _, tt := range cases {
                t.Run(fmt.Sprintln(tt.input), func(t *testing.T) {
                        actual := weatherPrediction(tt.input)
                        if actual != tt.want {
                                t.Errorf("%s, want: %s", actual, tt.want)
                        }
                })
        }
}