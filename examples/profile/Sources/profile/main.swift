import Foundation
import User

// Pull the token from the command line
var token = ""
if CommandLine.argc <= 1 {
    print("Must specify token on command line")
    exit(EXIT_FAILURE)
}
token = CommandLine.arguments[1]

// Set the API token in the header struct
UserAPI.customHeaders["X-API-Token"] = token

// Set up a dummy request builder factory
//UserAPI.requestBuilderFactory = BearerRequestBuilderFactory()

// Do the async call. The two parameters are the profile and
ProfileAPI.getUserProfile() { (profile, error) in
    guard error == nil else {
        if let err = error {
            print("Request failed: ", err)
        }
        exit(EXIT_FAILURE)
    }
    if let p = profile {
        print("Profile:")
        if let name = p.name {
            print("Name:      ", name)
        }
        if let email = p.email {
            print("Email:     ", email)
        }
        if let url = p.avatarUrl {
            print("Avtar URL: ", url)
        }
        exit(EXIT_SUCCESS)
    }
    print("Did not get a profile")
    exit(EXIT_FAILURE)
}

// Since this is a command line application we must run a dispatch queue
RunLoop.main.run()
