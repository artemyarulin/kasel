# kasel
Track list of visited links across different sources with help of Haskell

## Example usage
Consider your are following certain topic across different link aggregators like different subreddits, some old forum and couple of RSS feeds and one more email newsletter. Quite often there are duplicates and in many cases there are links that you've seen already. `kasel` may help you:

``` bash
$ kasel https://www.reddit.com/r/Clojure
http://google.com (O)pen (S)kip (B)lacklist B
http://example.com (O)pen (S)kip (B)lacklist S
http://example.com/other-link (O)pen (S)kip (B)lacklist ^C
$ cat kasel.ini
[blacklist]
c822c1b63853ed273b89687ac505f9fa
[visited]
a9b9f04336ce0181a08e774e01113b31
$ kasel < email.eml
http://example.com/something-else (O)pen (S)kip (B)lacklist O
$ cat kasel.ini
[blacklist]
c822c1b63853ed273b89687ac505f9fa
[visited]
a9b9f04336ce0181a08e774e01113b31
1ad3bed1e7f1278e7391bd12c563877c
$ kasel < `curl https://www.reddit.com/r/Clojure`
$
```

