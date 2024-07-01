package main

import (
	"bufio"
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
	"net/http/httputil"
	"os"
	"strconv"
	"strings"
	"time"
)

var (
	// ErrLineNotFound -
	ErrLineNotFound = errors.New("lines: line not found")
)

type onError int

const (
	onErrorPanic onError = iota
	onErrorError
)

// Lines represents multi line.
type Lines struct {
	r       io.Reader
	w       io.Writer
	onError onError

	store []string
}

// NewLines create lines from provided input reader.
func New(r io.Reader) *Lines {
	lines, err := newLines(r, ioutil.Discard, onErrorPanic)
	if err != nil {
		panic(err)
	}
	return lines
}

// Line represents single line.
type Line struct {
	store string
	field int
}

// Line return given n line.
func (ls *Lines) Line(n int) *Line {
	line, err := ls.line(n)
	if err != nil {
		panic(err)
	}
	return line
}

func (ls *Lines) line(n int) (*Line, error) {
	if n >= len(ls.store) {
		return nil, ErrLineNotFound
	}
	return &Line{store: ls.store[n]}, nil
}

func (l *Line) Ints() []int {
	ints, err := l.ints()
	if err != nil {
		panic(err)
	}
	return ints
}

func (l *Line) ints() ([]int, error) {
	var ints []int
	fields := strings.Fields(l.store)
	for _, s := range fields {
		i, err := strconv.Atoi(s)
		if err != nil {
			return nil, err
		}
		ints = append(ints, i)
	}
	return ints, nil
}

// Field specify current field scope.
func (l *Line) Field(n int) *Line {
	clone := l.clone()
	clone.field = n
	return clone
}

func (l *Line) Int() int {
	ints, err := l.ints()
	if err != nil {
		panic(err)
	}
	return ints[l.field]
}

func newLines(r io.Reader, w io.Writer, onError onError) (*Lines, error) {
	lines := &Lines{
		r:       r,
		w:       w,
		onError: onErrorError,
	}
	return lines, lines.init()
}

func (ls *Lines) init() error {
	s := bufio.NewScanner(ls.r)
	for s.Scan() {
		ls.store = append(ls.store, s.Text())
	}
	return s.Err()
}

func (l *Line) clone() *Line {
	clone := *l
	return &clone
}

func main() {
	lines := New(os.Stdin)
	ns := lines.Line(1).Ints()

	wh, err := SNew(Config{
		URL:     "https://hooks.slack.com/services/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",
		Channel: "testroom",
	})
	if err != nil {
		panic(err)
	}
	err = wh.SendPayload(&Payload{
		Text: lines.Line(1).store,
	})
	if err != nil {
		panic(err)
	}

	evenMax := maxNum(ns, true)
	oddMax := maxNum(ns, false)

	count := do(ns, evenMax, oddMax)
	if evenMax == oddMax {
		count = len(ns) / 2
	}
	fmt.Println(count)
}

func maxNum(ns []int, even bool) int {
	m := map[int]int{}

	var i int
	if even {
		i = 0
	} else {
		i = 1
	}
	for {
		if i >= len(ns) {
			break
		}
		m[ns[i]]++
		i += 2
	}
	var maxCount int
	var maxNum int
	for num, count := range m {
		if count > maxCount {
			maxCount = count
			maxNum = num
		}
	}
	return maxNum
}

func do(ns []int, _even, _odd int) int {
	sns := toS(ns)
	// fmt.Println(ns)
	even := strconv.Itoa(_even)
	odd := strconv.Itoa(_odd)

	fields := strings.Fields(sns)
	var count int

	var i int
	for _, str := range fields {
		// fmt.Printf("%s[%d] = %s\n", ns, i, str)
		if i%2 == 0 {
			if str != even {
				count++
			}
		} else {
			if str != odd {
				count++
			}
		}
		i++
	}

	return count
}

func toS(ns []int) string {
	var b bytes.Buffer
	for _, n := range ns {
		b.WriteString(strconv.Itoa(n) + " ")
	}
	return strings.TrimSpace(b.String())
}

const (
	contentTypeJSON  = "application/json"
	defaultUsername  = "slack-webhook-client"
	defaultIconEmoji = "+1"
)

var (
	ErrEmptyURL     = errors.New("URL must not empty")
	ErrEmptyChannel = errors.New("Channel must not empty")
)

type Config struct {
	// WebhookURL
	URL string
	// Channel to which post messages
	Channel string
	// Username by whom message is posted
	Username string
	// Emoji representing user
	IconEmoji string
	// Timeout used by http.Client
	Timeout time.Duration
	// flag whether dump response
	Dump bool
}

func (cfg *Config) SetDefualts() {
	if cfg.Username == "" {
		cfg.Username = defaultUsername
	}
	if cfg.IconEmoji == "" {
		cfg.IconEmoji = defaultIconEmoji
	}
}

// Client keeps config and underlying http client.
// store config value not pointer for immutability.
type Client struct {
	cfg    Config
	client *http.Client
}

// New return Client by provided configuration.
// if it is not given, use default one
func SNew(c Config) (*Client, error) {
	c.SetDefualts()
	if err := checkConfig(&c); err != nil {
		return nil, err
	}
	return &Client{
		cfg: c,
		client: &http.Client{
			Timeout: c.Timeout,
		},
	}, nil
}

func checkConfig(c *Config) error {
	return applyChecks(c,
		checkURLIsNotEmpty,
		checkChannelIsNotEmpty,
	)
}

func checkURLIsNotEmpty(c *Config) error {
	if c.URL == "" {
		return ErrEmptyURL
	}
	return nil
}

func checkChannelIsNotEmpty(c *Config) error {
	if c.Channel == "" {
		return ErrEmptyChannel
	}
	return nil
}

func applyChecks(c *Config, fns ...func(*Config) error) error {
	for _, fn := range fns {
		if err := fn(c); err != nil {
			return err
		}
	}
	return nil
}

// Field which is used in Attachment is displayed in message table.
type Field struct {
	// Required Field Title.
	Title string `json:"title"`
	// Text value of the field.
	Value string `json:"value"`
	// Optional flag indicating whether the `value` is short enough to be displayed
	// side-by-side with other values.
	Short bool `json:"short"`
}

// Attachment contains message formatting info.
type Attachment struct {
	// Required text summary of the attachment that is shown by clients that understand attachments
	// but choose not to show them.
	Fallback string `json:"fallback"`
	// Optional text that should appear within the attachment.
	Text string `json:"text"`
	// Optional text that should appear above the formatted data.
	Pretext string `json:"pretext"`
	// Can either be one of 'good', 'warning', 'danger', or any hex color code.
	Color  string   `json:"color"`
	Fields []*Field `json:"fields"`
}

// Payload represent POST request body.
// it is intended to encode json.
type Payload struct {
	Text        string        `json:"text"`
	Channel     string        `json:"channel"`
	Username    string        `json:"username,omitempty"`
	IconEmoji   string        `json:"icon_emoji,omitempty"`
	Attachments []*Attachment `json:"attachments,omitempty"`
}

func (c *Client) setDefault(cfg Config, p *Payload) {
	if p.Channel == "" {
		p.Channel = cfg.Channel
	}
	if p.Username == "" {
		p.Username = cfg.Username
	}
	if p.IconEmoji == "" {
		p.IconEmoji = cfg.IconEmoji
	}
}

func (c *Client) setHeaders(req *http.Request) *http.Request {
	req.Header.Set("Content-Type", contentTypeJSON)
	return req
}

func (c *Client) buildRequest(p *Payload) (*http.Request, error) {
	b, err := json.Marshal(p)
	if err != nil {
		return nil, err
	}
	req, err := http.NewRequest("POST", c.cfg.URL, bytes.NewReader(b))
	if err != nil {
		return nil, err
	}
	return c.setHeaders(req), nil
}

func (c *Client) handleResponse(res *http.Response) error {
	if c.cfg.Dump {
		dump, err := httputil.DumpResponse(res, true)
		if err != nil {
			return err
		}
		fmt.Println(string(dump))
	}
	if res.StatusCode >= 400 {
		return fmt.Errorf("failed to send messages: %s", res.Status)
	}
	return nil
}

func (c *Client) SendPayload(p *Payload) (err error) {
	c.setDefault(c.cfg, p)
	req, err := c.buildRequest(p)
	if err != nil {
		return err
	}
	res, err := c.client.Do(req)
	if err != nil {
		return err
	}
	defer func() {
		clsErr := res.Body.Close()
		if err == nil {
			err = clsErr
		}
	}()
	return c.handleResponse(res)
}

func (c *Client) Send(msg string) error {
	p := &Payload{Text: msg}
	return c.SendPayload(p)
}
