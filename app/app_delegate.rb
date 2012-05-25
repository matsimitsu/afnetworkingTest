class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    url = NSURL.URLWithString("https://gowalla.com/users/mattt.json")
    request = NSURLRequest.requestWithURL(url)

    operation = AFJSONRequestOperation.JSONRequestOperationWithRequest(
      request,
      success:lambda { |request, response| puts response.inspect },
      failure:nil
    )
    operation.start
    true
  end
end
