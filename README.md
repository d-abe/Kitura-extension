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

let v1 = router.group("/1.0")


let user = v1.group("/user")

// register
user.get("/register") {
    request, response, next in

    response.status(HttpStatusCode.OK).send("register")

    next()
}

// login
user.get("/login") {
    request, response, next in

    response.status(HttpStatusCode.OK).send("login")

    next()
}


let article = v1.group("/article")

// list
article.get("/list") {
    request, response, next in

    response.status(HttpStatusCode.OK).send("article_list")

    next()
}


let server = HttpServer.listen(8090, delegate: router)
Server.run()
```

You can access `register`, via `http://localhost:8090/1.0/user/register`

It just only define prefix path, but readability is better.

