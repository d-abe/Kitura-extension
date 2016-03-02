import KituraRouter
import KituraNet

extension RouterRequest {

    ///
    /// get User info
    ///
    public func get(key: String) -> AnyObject? {
        return userInfo[key]
    }

    ///
    /// set User info
    ///
    public func set(key: String, value: AnyObject) {
        userInfo[key] = value
    }

}

extension Router {

    ///
    /// create and add router group
    ///
    public func group(path: String) -> RouterGroup {
        return RouterGroup(path: path, router: self)
    }

}

///
/// Grouping rules for routes
///
public class RouterGroup {

    let path : String
    let router : Router

    init(path: String, router: Router) {
        self.path = path
        self.router = router
    }

    // MARK: All
    public func all(handler: RouterHandler) -> Router {
        return router.all(self.path, handler: handler)
    }

    public func all(path: String, handler: RouterHandler) -> Router {
        return router.all(self.path+path, handler: handler)
    }

    // MARK: Get
    public func get(handler: RouterHandler) -> Router {
        return router.get(self.path, handler: handler)
    }

    public func get(path: String, handler: RouterHandler) -> Router {
        return router.get(self.path+path, handler: handler)
    }

    // MARK: Post
    public func post(handler: RouterHandler) -> Router {
        return router.post(self.path, handler: handler)
    }

    public func post(path: String, handler: RouterHandler) -> Router {
        return router.post(self.path+path, handler: handler)
    }

    // MARK: Put
    public func put(handler: RouterHandler) -> Router {
        return router.put(self.path, handler: handler)
    }

    public func put(path: String, handler: RouterHandler) -> Router {
        return router.put(self.path+path, handler: handler)
    }

    // MARK: Delete
    public func delete(handler: RouterHandler) -> Router {
        return router.delete(self.path, handler: handler)
    }

    public func delete(path: String, handler: RouterHandler) -> Router {
        return router.delete(self.path+path, handler: handler)
    }

    // MARK: Options
    public func options(handler: RouterHandler) -> Router {
        return router.options(self.path, handler: handler)
    }

    public func options(path: String, handler: RouterHandler) -> Router {
        return router.options(self.path+path, handler: handler)
    }

    // MARK: Trace
    public func trace(handler: RouterHandler) -> Router {
        return router.trace(self.path, handler: handler)
    }

    public func trace(path: String, handler: RouterHandler) -> Router {
        return router.trace(self.path+path, handler: handler)
    }

    // MARK: Copy
    public func copy(handler: RouterHandler) -> Router {
        return router.copy(self.path, handler: handler)
    }

    public func copy(path: String, handler: RouterHandler) -> Router {
        return router.copy(self.path+path, handler: handler)
    }

    // MARK: Lock
    public func lock(handler: RouterHandler) -> Router {
        return router.lock(self.path, handler: handler)
    }

    public func lock(path: String, handler: RouterHandler) -> Router {
        return router.lock(self.path+path, handler: handler)
    }

    // MARK: MkCol
    public func mkCol(handler: RouterHandler) -> Router {
        return router.mkCol(self.path, handler: handler)
    }

    public func mkCol(path: String, handler: RouterHandler) -> Router {
        return router.mkCol(self.path+path, handler: handler)
    }

    // MARK: Move
    public func move(handler: RouterHandler) -> Router {
        return router.move(self.path, handler: handler)
    }

    public func move(path: String, handler: RouterHandler) -> Router {
        return router.move(self.path+path, handler: handler)
    }

    // MARK: Purge
    public func purge(handler: RouterHandler) -> Router {
        return router.purge(self.path, handler: handler)
    }

    public func purge(path: String, handler: RouterHandler) -> Router {
        return router.purge(self.path+path, handler: handler)
    }

    // MARK: Propfind
    public func propFind(handler: RouterHandler) -> Router {
        return router.propFind(self.path, handler: handler)
    }

    public func propFind(path: String, handler: RouterHandler) -> Router {
        return router.propFind(self.path+path, handler: handler)
    }

    // MARK: PropPatch
    public func propPatch(handler: RouterHandler) -> Router {
        return router.propPatch(self.path, handler: handler)
    }

    public func propPatch(path: String, handler: RouterHandler) -> Router {
        return router.propPatch(self.path+path, handler: handler)
    }

    // MARK: Unlock
    public func unlock(handler: RouterHandler) -> Router {
        return router.unlock(self.path, handler: handler)
    }

    public func unlock(path: String, handler: RouterHandler) -> Router {
        return router.unlock(self.path+path, handler: handler)
    }

    // MARK: Report
    public func report(handler: RouterHandler) -> Router {
        return router.report(self.path, handler: handler)
    }

    public func report(path: String, handler: RouterHandler) -> Router {
        return router.report(self.path+path, handler: handler)
    }

    // MARK: MkActivity
    public func mkActivity(handler: RouterHandler) -> Router {
        return router.mkActivity(self.path, handler: handler)
    }

    public func mkActivity(path: String, handler: RouterHandler) -> Router {
        return router.mkActivity(self.path+path, handler: handler)
    }

    // MARK: Checkout
    public func checkout(handler: RouterHandler) -> Router {
        return router.checkout(self.path, handler: handler)
    }

    public func checkout(path: String, handler: RouterHandler) -> Router {
        return router.checkout(self.path+path, handler: handler)
    }

    // MARK: Merge
    public func merge(handler: RouterHandler) -> Router {
        return router.merge(self.path, handler: handler)
    }

    public func merge(path: String, handler: RouterHandler) -> Router {
        return router.merge(self.path+path, handler: handler)
    }

    // MARK: MSearch
    public func mSearch(handler: RouterHandler) -> Router {
        return router.mSearch(self.path, handler: handler)
    }

    public func mSearch(path: String, handler: RouterHandler) -> Router {
        return router.mSearch(self.path+path, handler: handler)
    }

    // MARK: Notify
    public func notify(handler: RouterHandler) -> Router {
        return router.notify(self.path, handler: handler)
    }

    public func notify(path: String, handler: RouterHandler) -> Router {
        return router.notify(self.path+path, handler: handler)
    }

    // MARK: Subscribe
    public func subscribe(handler: RouterHandler) -> Router {
        return router.subscribe(self.path, handler: handler)
    }

    public func subscribe(path: String, handler: RouterHandler) -> Router {
        return router.subscribe(self.path+path, handler: handler)
    }

    // MARK: Unsubscribe
    public func unsubscribe(handler: RouterHandler) -> Router {
        return router.unsubscribe(self.path, handler: handler)
    }

    public func unsubscribe(path: String, handler: RouterHandler) -> Router {
        return router.unsubscribe(self.path+path, handler: handler)
    }

    // MARK: Patch
    public func patch(handler: RouterHandler) -> Router {
        return router.patch(self.path, handler: handler)
    }

    public func patch(path: String, handler: RouterHandler) -> Router {
        return router.patch(self.path+path, handler: handler)
    }

    // MARK: Search
    public func search(handler: RouterHandler) -> Router {
        return router.search(self.path, handler: handler)
    }

    public func search(path: String, handler: RouterHandler) -> Router {
        return router.search(self.path+path, handler: handler)
    }

    // MARK: Connect
    public func connect(handler: RouterHandler) -> Router {
        return router.connect(self.path, handler: handler)
    }

    public func connect(path: String, handler: RouterHandler) -> Router {
        return router.connect(self.path+path, handler: handler)
    }

    // MARK: Use
    public func use(middleware: RouterMiddleware) -> Router {
        return router.use(self.path, middleware: middleware)
    }

    public func use(path: String, middleware: RouterMiddleware) -> Router {
        return router.use(self.path+path, middleware: middleware)
    }

}