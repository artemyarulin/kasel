data Config = Config [String] [String]
data OpType = Open | Skip | Blacklist
data Op = Op String OpType

-- Returns all links in the content string
allLinks content = []
-- Returns only new links from non blacklisted hosts
newLinks links config = []


