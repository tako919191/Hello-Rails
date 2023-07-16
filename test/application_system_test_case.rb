require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, options: {
    browser: :remote,
    url: ENV.fetch("SELENIUM_DRIVER_URL"),
  }

  Capybara.server_host = IPSocket.getaddress(Socket.gethostname)
  Capybara.app_host = "http://#{Capybara.server_host}"

end
