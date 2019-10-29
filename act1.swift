
let urls = [
    "https://www.greenmile.com",
    "https://www.greenmile.com",
    "http://www.greenmile.com",
    "http://www.greenmile.com",
    "http://www.greenmile.com",
]

var newUrls = [String]()
for url in urls {
    var newUrl = url
    let twoPointsIndex = newUrl.firstIndex(of: ":")
    if newUrl.split(separator: ":")[0] == "http" {
        newUrl.insert("s", at: twoPointsIndex!)
    }
    newUrls.append(newUrl)
}

print(newUrls)
