require 'site_prism'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'laranja'
require 'faker'
require_relative '../page_objects/login.rb'

BROWSER = ENV['BROWSER'] || 'chrome'

puts "# browser:     #{BROWSER}"

Laranja.load('pt-BR')
Capybara.default_driver = :selenium
# Capybara.app_host       = $parameters['app_host']
CLIENT = Selenium::WebDriver::Remote::Http::Default.new
CLIENT.open_timeout = 200 # seconds
CLIENT.read_timeout = 200 # seconds

# Global configs
$env = YAML.load_file('./config/environments.yml')
$parameters = YAML.load_file('./config/parameters.yml')

# Auxiliar methods
def register_chrome(app)
  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 http_client: CLIENT,
                                 desired_capabilities: CAPS)
end

Capybara.register_driver :selenium do |app|
  send("register_#{BROWSER}", app)
end

CAPS = Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
    'args' => ['--window-size=1600,1300', '--test-type', '--no-sandbox', '--incognito', 'disable-infobars'],
    'excludeSwitches' => ['--ignore-certificate-errors']
  }
)
