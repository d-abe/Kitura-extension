# Kitura-extension

This package is extension of [Kitura web framework](https://github.com/IBM-Swift/Kitura)

Now, only RouterGroup is available.

## RouterGroup

Here is a sample code.

```swift
import Foundation
import KituraRouter
import KituraSys
import KituraNet

let router : Router = Router()

let group = router.group("/1.0")

// register
group.get("/user/register") {
    request, response, next in

    try! response.status(HttpStatusCode.OK).end("test")
}


let server = HttpServer.listen(8090, delegate: router)
Server.run()
```

You can access `register`, via `http://localhost:8090/1.0/user/register`

It just only define prefix path, but readability is better.

