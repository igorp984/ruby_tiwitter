module Twittes
    CLIENT = Twitter::REST::Client.new do |config|
        config.consumer_key        = "WDbj1Z36OYaF9eqLxDWxqJw44"
        config.consumer_secret     = "zeJqVq3vMizwwWZJWnKZ8TmpIs4bfe9ahGWvEvJbGj5xa5z7Dj"
    end
end