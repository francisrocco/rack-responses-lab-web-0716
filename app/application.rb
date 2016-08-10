class Application

  def call(new)
    resp = Rack::Response.new

    #if before noon, greet with "Good Morning!"
    #if after noon, green with "Good Afternoon!"
    hour_now = Time.now.hour

    if hour_now < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
