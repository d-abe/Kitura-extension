import KituraNet
import SwiftyJSON
import Foundation

public class HttpClient {
    var url: String
    var headers: [String:String] = [String:String]()

    public init(_ url: String) {
        self.url = url
    }

    public func header(key: String, _ value: String) -> HttpClient {
        self.headers[key] = value
        return self
    }

    public func send(method: String, _ data: JSON?,_ callback: ClientRequestCallback) -> HttpClient {
        let urlComponent = NSURLComponents(string: self.url)!

        var options: [KituraNet.ClientRequestOptions] = [.Method(method)]

        if let scheme = urlComponent.scheme {
            options.append(.Schema(scheme+"://"))
        }
        if let host = urlComponent.host {
            options.append(.Hostname(host))
        }
        if let port = urlComponent.port {
            options.append(.Port(port.shortValue))
        }
        if let path = urlComponent.path {
            if let query = urlComponent.query {
                options.append(.Path(path+"?"+query))
            } else {
                options.append(.Path(path))
            }
        }
        if let user = urlComponent.user {
            options.append(.Username(user))
        }
        if let password = urlComponent.password {
            options.append(.Password(password))
        }


        let request = Http.request(options, callback: callback)
        request.headers = self.headers

        if data == nil {
            request.end()
        }
        else if let jsonStr = data!.rawString() {
            request.end(jsonStr)
        } else {
            request.end()
        }

        return self
    }

    public func post(data: JSON,_ callback: ClientRequestCallback) -> HttpClient {
        return self.send("POST", data,callback)
    }

    public func get(callback: ClientRequestCallback) -> HttpClient {
        return self.send("GET", nil, callback)
    }
}
